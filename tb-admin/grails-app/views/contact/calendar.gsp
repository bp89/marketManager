
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Contacts | Calendar</title>
    <meta name="layout" content="kickstart" />
    <link rel='stylesheet' href='${resource(dir: 'css',file:'fullcalendar.css')}'/>
    <script src='${resource(dir: 'js',file: 'jquery-1.11.0.min.js')}'></script>
    <script src='${resource(dir: 'js/lib',file: 'moment.min.js')}' ></script>
    <script src='${resource(dir:'js',file: 'fullcalendar.js')}' type="application/javascript"></script>
    <link href='${resource(dir: 'css',file: 'fullcalendar.print.css')}' rel='stylesheet' media='print' />
</head>
<body>

<div id='calendar'></div>


<script>
    var jq = jq?jq: $.noConflict();
    jq(document).ready(function() {
        jq('#calendar').fullCalendar({
                    defaultDate: '2015-02-12',
//                    theme:true,
                    editable: true,
                    eventLimit: true, // allow "more" link when too many events
                    businessHours: true,
                    selectable: true,
                    selectHelper: true,
                    events: [
                        {
                            title: 'All Day Event',
                            start: '2015-02-01'
                        }
                    ],
                    select: function(start, end) {
                        var title = prompt('Event Title:');
                        var eventData;
                        if (title) {
                            eventData = {
                                title: title,
                                start: start,
                                end: end
                            };
                            jq('#calendar').fullCalendar('renderEvent', eventData, true); // stick? = true
                        }
                        jq('#calendar').fullCalendar('unselect');
                    },
//                    dayClick: function() {
//                        alert('a day has been clicked!');
//                    },
                    header: {
                        left: 'prevYear,prev,next today,nextYear',
                        center: 'title',
                        right: 'month,agendaWeek,agendaDay'
                    },
                    businessHours:{
                        start: '9:00', // a start time (10am in this example)
                        end: '18:00', // an end time (6pm in this example)

                        dow: [ 1, 2, 3, 4,5 ]
                        // days of week. an array of zero-based day of week integers (0=Sunday)
                        // (Monday-Thursday in this example)
                    },
                    aspectRatio:2
//                    weekNumbers:true
                }
        );
    });
</script>
<style>

body {
    font-size: 14px;
}
</style>
</body>
</html>