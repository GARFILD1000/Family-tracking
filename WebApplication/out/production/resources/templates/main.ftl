<#import "parts/page.ftl" as pageTemplate>

<@pageTemplate.page "Family Tracking">

    <div class="container-fluid" ng-app="springApp" ng-controller="appController">
        <div class="row fill-viewport">
            <div class="col-lg-3 col-md-3 col-sm-12">
                <div class="panel panel-primary">
                    <div class="panel-heading rounded-top centered"><h3><a class="text-center white" href="/friends">Друзья</a></h3></div>
                        <div class="panel-body fixed-tables">

                        <table id="friendsTable" class="table table-striped fill-viewport">
                            <thead>
                            <tr>
                                <th><i class="fas fa-users" hover-class="fa-user-alt"
                                       ng-click="orderField = 'id'; orderInc = !orderInc"></i> Никнейм</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr ng-repeat="item in friends | orderBy: orderField : orderInc">
                                <td>
                                    <input type="checkbox" ng-checked="checkedFriends.indexOf(item) != -1" ng-click="toggleCheck(item)">
                                    {{ item.username }}
                                </td>
                            </tr>
                            </tbody>
                        </table>
                </div>
            </div>
        </div>
        <div class="d-block d-md-none w-100"></div>
            <div class="col-lg-9 col-md-9 col-sm-12">
            <div class="panel panel-primary">
                <div class="panel-heading text-center rounded-top"><h3 class="white">Местоположение друзей</h3></div>
                <div class="panel-body panel-primary fixed-tables">
                    <div class="row justify-content-sm-center justify-content-center">
                        <div class="col-lg col-md col-sm-6 fill-width">
                            <button class="btn btn-default" ng-click="setOne()">
                                Последнее место
                            </button>
                        </div>
                        <div class="col-lg col-md col-sm-6 fill-width">
                            <button class="btn btn-default" ng-click="setHour()">
                                Последний час
                            </button>
                        </div>
                        <div class="col-lg col-md col-sm-6 fill-width">
                            <button class="btn btn-default" ng-click="setDay()">
                                Последние сутки
                            </button>
                        </div>
                        <div class="col-lg col-md col-sm-6 fill-width">
                            <button class="btn btn-default" ng-click="clear()">
                                Очистить карту
                            </button>
                        </div>
                    </div>
                    <div class="row justify-content-center fill-viewport">
                        <div class="col">
                            <div id='map' class="fill-viewport"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

    <script src='https://maps.api.2gis.ru/2.0/loader.js?pkg=full'></script>
    <script src='/resources/js/doubleGisScript.js'></script>
    <script src="/resources/js/angular.min.js"></script>
    <script src='/resources/js/main.js'></script>
    <script>
        function funonload(){
            create2GisMap(54, 82); console.log("Access");
            $('#friendsTable').fixedHeaderTable({ footer: false, cloneHeadToFoot: false, fixedColumn: false });

        }  window.onload = funonload;
    </script>
</@pageTemplate.page>
