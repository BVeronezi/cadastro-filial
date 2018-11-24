angular
  .module('app')
  .controller('TodoController', ['$scope', '$state', 'Todo', function($scope,
      $state, Todo) {
    $scope.todos = [];
    function getTodos() {
      Todo
        .find()
        .$promise
        .then(function(results) {
          $scope.todos = results;
        });
    }
    getTodos();

    $scope.addTodo = function() {
      Todo
        .create($scope.newTodo)
        .$promise
        .then(function(todo) {
          $scope.newTodo = '';
          $scope.todoForm.content.$setPristine();
          $('.focus').focus();
          getTodos();
        });
    };

    $scope.buscarCEP = function(){
      var urlWebService = "https://viacep.com.br/ws/";
      var cep = $scope.cep;
      
      uri = urlWebService + cep;
      $http.get(uri).sucess(function(data, status){
        $scope.cep = data.logradouro + ' ' + 
          data.logradouro + ', ' + data.bairro + ', ' + 
          data.cidade + '' + ' - '+ data.uf;
      }).error(function(){alert("Ocorreu um erro ao pesquisar o CEP")})};
    
  }]);