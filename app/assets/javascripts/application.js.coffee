#= require jquery
#= require jquery_ujs
#= require jquery.ui.all
#= require jquery-ui-timepicker-addon
#= require twitter/bootstrap
#= require skim
#= require underscore
#= require backbone
#= require todo_bb
#= require_tree ../templates
#= require_tree ./models
#= require_tree ./collections
#= require_tree ./views
#= require_tree ./routers
#= require_tree ./forms
#= require_tree ./application
#= require_tree .

$.datepicker.regional['ru'] =
  closeText: 'Закрыть'
  prevText: '<Пред'
  nextText: 'След>'
  currentText: 'Сегодня'
  monthNames: ['Январь','Февраль','Март','Апрель','Май','Июнь'
  'Июль','Август','Сентябрь','Октябрь','Ноябрь','Декабрь']
  monthNamesShort: ['Янв','Фев','Мар','Апр','Май','Июн'
  'Июл','Авг','Сен','Окт','Ноя','Дек']
  dayNames: ['воскресенье','понедельник','вторник','среда','четверг','пятница','суббота']
  dayNamesShort: ['вск','пнд','втр','срд','чтв','птн','сбт']
  dayNamesMin: ['Вс','Пн','Вт','Ср','Чт','Пт','Сб']
  weekHeader: 'Не'
  dateFormat: 'dd.mm.yy'
  firstDay: 1
  isRTL: false
  showMonthAfterYear: false
  yearSuffix: ''

$.timepicker.regional['ru'] =
  timeOnlyTitle: 'Выберите время'
  timeText: 'Время'
  hourText: 'Часы'
  minuteText: 'Минуты'
  secondText: 'Секунды'
  millisecText: 'Миллисекунды'
  timezoneText: 'Часовой пояс'
  currentText: 'Сейчас'
  closeText: 'Закрыть'
  timeFormat: 'HH:mm'
  amNames: ['AM', 'A']
  pmNames: ['PM', 'P']
  isRTL: false


$.timepicker.setDefaults $.timepicker.regional['ru']
$.datepicker.setDefaults $.datepicker.regional['ru']

window.initDateTimePicker = () ->
  $(".datetimepicker").datetimepicker
    dateFormat: "dd.mm.yy"
    timeFormat: "HH:mm"

jQuery ->
  window.initDateTimePicker()