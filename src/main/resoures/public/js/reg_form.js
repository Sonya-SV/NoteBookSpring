angular.module("registration_form", [])
    .controller("RegCtrl", function ($scope, $http) {
        $scope.auth = {};
        let resultMessageEl = document.getElementById('resultMessage');
        let exampleInputNameEl = document.getElementById('exampleInputName1');
        let exampleInputLoginEl = document.getElementById('exampleInputLogin1');
        let inputNameLabel = document.getElementById('inputNameLabel1');
        let inputLoginLabel = document.getElementById('inputLoginLabel1');
        exampleInputNameEl.addEventListener('input', () => {
            inputNameLabel.style.color = 'black';
            inputLoginLabel.style.color = 'black';
            inputEmailLabel.style.color = 'black';
            inputPasswordLabel.style.color = 'black';
            $scope.message = '';
        });
        $scope.sendForm = function(auth){
            $http({
                method: "POST",
                url: "/api/reg_form",
                data: $.param(auth),
                headers: { "Content-Type" : "application/x-www-form-urlencoded" }
            }).then(
                (data) => {
                    resultMessageEl.style.color = 'green';
                    $scope.message = 'Успешно зарегистрирован';
                    exampleInputNameEl.value = '';
                    exampleInputLoginEl.value = '';
                    exampleInputEmailEl.value ='';
                    exampleInputPasswordEl.value='';
                    //TODO write more
                },
                (error) => {
                    resultMessageEl.style.color = 'red';
                    inputNameLabel.style.color = 'red';
                    inputLoginLabel.style.color = 'red';
                    inputEmailLabel.style.color = 'red';
                    inputPasswordLabel.style.color = 'red';
                    exampleInputNameEl.value = '';
                    exampleInputLoginEl.value = '';
                    exampleInputEmailEl.value ='';
                    exampleInputPasswordEl.value='';
                    $scope.message = 'При регистрации произошла ошибка';
                }
            );
        }
    });