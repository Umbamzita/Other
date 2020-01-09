
from pprint import pprint
import httplib2
import apiclient.discovery
from oauth2client.service_account import ServiceAccountCredentials
from datetime import datetime, date, time
from random import choice

equipment =[
    ['БСУ№1(Инерт.Мат.)', 'Распределительный пункт 601 РП-601'],
    ['БСУ№1(Инерт.Мат.)', 'Шкаф управления 7.1 ШУ-7.1'],
    ['БСУ№1(Инерт.Мат.)', 'Шкаф управления 8.1 ШУ-8.1'],
    ['БСУ№1(Инерт.Мат.)', 'Шкаф управления 8.2 ШУ-8.2'],
    ['БСУ№1(Инерт.Мат.)', 'Шкаф управления 9.1  ШУ-9.1'],
    ['БСУ№1(Инерт.Мат.)', 'Шкаф управления 9.2  ШУ-9.2'],
    ['БСУ№1(Инерт.Мат.)', 'Пульт включения системы ПВС'],
    ['БСУ№1(Инерт.Мат.)', 'Пост местного управления конвейером ЛК-12 ПМУ- LK-12'],
    ['БСУ№1(Инерт.Мат.)', 'Пост местного управления конвейером  ЛК-13 ПМУ- LK-13'],
    ['БСУ№1(Инерт.Мат.)', 'Пост местного управления конвейер ЛК-16 ПМУ- LK-16'],
    ['БСУ№1(Инерт.Мат.)', 'Пульт управления переключателем потока секции 1.2.-3.4  ПМУ -РК-1'],
    ['БСУ№1(Инерт.Мат.)', 'Пост местного управления конвейером ЛК -17  ПМУ- LK-17'],
    ['БСУ№1(Инерт.Мат.)', 'Пост местного управления конвейером ЛК-18 ПМУ- LK-18'],
    ['БСУ№1(Инерт.Мат.)', 'Пульт управления поворотным устройством  конвейер ЛК-18 ПМУ- PV-18'],
    ['БСУ№1(Инерт.Мат.)', 'Пост местного управления конвейером  ЛК-14 ПМУ- LK-14'],
    ['БСУ№1(Инерт.Мат.)', 'Пост местного управления конвейером ЛК-15  ПМУ- LK-15'],
    ['БСУ№1(Инерт.Мат.)', 'Пульт управления поворотным устройством  конвейером ЛК 15 ПМУ- PV-15'],
    ['БСУ№1(Инерт.Мат.)', 'Пост включения ИМ КУ-ИМ'],
    ['БСУ№1(Инерт.Мат.)', 'Пульт управления переключателем потока Грохот 1 ПМУ -РК2'],
    ['БСУ№1(Инерт.Мат.)', 'Пульт управления переключателем потока грохот 2 ПМУ -РК3'],
    ['БСУ№1(Инерт.Мат.)', 'Пост местного управления конвейером LK-11 ПМУ- LK-11'],
    ['БСУ№1(Инерт.Мат.)', 'Пост местного управления Грохот 1 ПМУ- GR-1'],
    ['БСУ№1(Инерт.Мат.)', 'Пост местного управления Грохот 2  ПМУ-GR-2'],
    ['БСУ№1(Инерт.Мат.)', 'Система безопастности '],
    ['ЦОК', 'Пила двухголовочная автоматическая со штрих кодом'],
    ['ЦОК', 'Станок для обработки торцов импоста'],
    ['ЦОК', 'Конвеер подачи заготовок '],
    ['ЦОК', 'Машина для резки профиля-трубы (пила для резки армирования)'],
    ['ЦОК', 'Пила для резки штапика (автоматическая)'],
    ['ЦОК', 'Рольган измерительный с PLC контрольной системой и сенсорным экраном '],
    ['ЦОК', 'Станок для фрезерования  водоотливных каналов  '],
    ['ЦОК', 'Станок ПВХ сварочный  четырех головочный с укладчиком уплотнителя'],
    ['ЦОК', 'Станок углозачистной  ПВХ CNC 600 '],
    ['ЦОК', 'Станок фрезеровальный '],
    ['ЦОК', 'Установка компресорная ВК-10Е-10-500Д'],
    ['ЦОК', 'Пылесос-стружкоотсос  (Вытяжная установка)']
]


first = time(hour=7, minute=30)
second = time(hour = 15, minute = 50)
third = time(hour = 0, minute = 10)


def randomize(slug=None):
    lst = [[], ['Осипенко (н. КИПиА 5р)'], [], [], [], [], ['ТО'], ["-\\-"], []]
       
    date_today = date.today().strftime("%d-%m-%Y")
    time_now = datetime.now().time()
    
    if time_now < second and time_now > first:
        lst[2] = ['I']
        lst[3] = ['7:30']
    elif time_now > second:
        lst[2]=['II']
        lst[3] = ['15:50']
    elif time_now < first and time_now > third:
        lst[2]=['III']
        lst[3] = ['0:10']
        
    ceh , machine = choice(equipment)
    
    lst[0].append(date_today)
    lst[4].append(ceh)
    while machine in used_machine:
        ceh , machine = choice(equipment)
    
    lst[5].append(machine)
    used_machine.append(machine)
    timing_c = choice(timing)
    if not slug:
        lst[8].append(timing_c) 
        total_time.append(timing_c)
    else:
        lst[8].append(slug)
        total_time.append(slug)
    return lst


def get_of_rest_time():
    sheet = service.spreadsheets()
    result = sheet.values().get(spreadsheetId=spreadsheets_id,range="A1:I10000").execute()
    values = result.get('values', [])
    
    osip_sum = 0
    temp = 0
    u = False
    for x in range(-1,-5,-1):
        try:
            if values[x][1] == 'Осипенко (н. КИПиА 5р)':
                osip_sum += float(values[x][-1].replace(',','.'))
                u = True
                break
            elif values[x][1] == '' or not values[x][1]:
                temp += float(values[x][-1].replace(',','.'))
        except:
            pass
    if u:
        total_time.append(osip_sum + temp)
    
    

def main(slug):
    
    lst = randomize(slug)
    resource = { "majorDimension": "COLUMNS",  "values": lst  }
    range_ = "Лист1!A:A"
    add_info =service.spreadsheets().values().append(spreadsheetId=spreadsheets_id, range=range_,  body=resource,
        valueInputOption="USER_ENTERED")
    return add_info


def write_data():
    while True:
        if 10.4 - sum(total_time)  >=1.5:
            slug = None
            main(slug).execute()
        else:
            slug = 10.4 - sum(total_time)
            main(slug).execute()
            break



if __name__ == '__main__':
    CREDENTIALS_FILE = 'creeds.json'
    spreadsheets_id = '127qX72BR2ljv1JcihjiDHAxCA8i5xYDjHFO9S-zQ5eM'
    credentials = ServiceAccountCredentials.from_json_keyfile_name(
        CREDENTIALS_FILE, ['https://www.googleapis.com/auth/spreadsheets',
                            'https://www.googleapis.com/auth/drive'
                          ])

    httpAuth = credentials.authorize(httplib2.Http())
    service = apiclient.discovery.build('sheets', 'v4', http = httpAuth)
    timing= [0.5, 1, 1.5]
    used_machine = []
    total_time = []
    get_of_rest_time()
    write_data()
