<%-- 
    Document   : viewer
    Created on : 13/08/2018, 10:58:46
    Author     : flavio.campelo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <script type="text/javascript">

            var accessToken;
            var page;

            function updateAccessToken() {
                accessToken = $('#accessToken')[0].value;
            }

            function getPage() {
                return "http://localhost:7017/reportsviewer/external/" + $('#uidReportRequest')[0].value + "?access_token=" + accessToken;
            }

            function updateVariables() {
                updateAccessToken();
                page = getPage();
            }

            function showEmbedViewer() {
                updateVariables();
                openPage();
            }

            function openPage() {
                document.getElementById('container').innerHTML =
                    '<object data="' + page + '" type="text/html" style="height: 700px; width: 100%">\n\
                        <embed src="' + page + '" type="text/html"></embed>\n\
                    </object>';
            }
        </script>
        <script type="text/javascript" src="./js/jquery-3.3.1.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TReports Viewer Sample</title>
    </head>
    <body>
        <h1>TRerports Viewer Sample</h1>
        <span>Access Token:</span>
        <input 
            type="text" 
            id="accessToken" 
            style="width: 100%"
            value="eyJhbGciOiJSUzI1NiIsImtpZCI6ImVhMWFhNDQwM2I1ZDYyZjZkNzhiN2VjYTg4OGEzNDk2IiwidHlwIjoiSldUIn0.eyJuYmYiOjE1MzY2MDYwMTAsImV4cCI6MTUzNjYwNzUxMCwiaXNzIjoiaHR0cDovL3RyZXBvcnRzLnJhYy50b3R2cy5jb20uYnIvdG90dnMucmFjIiwiYXVkIjoiaHR0cDovL3RyZXBvcnRzLnJhYy50b3R2cy5jb20uYnIvdG90dnMucmFjL3Jlc291cmNlcyIsImNsaWVudF9pZCI6InJhY19ybyIsInN1YiI6IjE5IiwiYXV0aF90aW1lIjoxNTM2NjA2MDEwLCJpZHAiOiJsb2NhbCIsImh0dHA6Ly93d3cudG5mLmNvbS9pZGVudGl0eS9jbGFpbXMvdGVuYW50SWQiOiIzIiwic2NvcGUiOlsib3BlbmlkIl0sImFtciI6WyJwd2QiXX0.qndR_5AaJ3XbYj8xQCcHbLirfAnCQaq_X6gNP5ipPJNy4mlSmM7n7jaqBN7sNo-a-EA86-eeQf83Fk7nUmPpAFnxHBST4pLofIbpHsAOh78uDueqzxttfqYY__dXJzM7EaTorYxnSgMwCMl-81bWYpePvdLQ7iZtgIDrAL9NLwkq3FSgpBdLlN7wieAjiHzUplDVgjGZ7VD7v1lbugYKh6gGzC-9Kk2G0Y6UkU0FuUwJuT36d1d9BbPYCe_ReudFWBU_GHqvhSEiavfQwPip9DnPGHoqQbBFytH0S5rRrcCBDaYSJQ4i54dgD6EpEwzvhYp11arTxLtuJQdgck7ZTA"
        />
        <span>UID Report Request:</span>
        <input 
            type="text" 
            id="uidReportRequest" 
            value="da0b72ec-692a-4133-b6e3-474be1645ee7" 
            style="width: 100%"
        />
        <input type="button" value="Embed Viewer" onclick="showEmbedViewer();"/>
        <div id="container" style="height: 700px; width: 100%"></div>
    </body>
</html>
