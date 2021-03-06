// Class that defines a code and its effects.
class Code {

    // Identifier of the code
    private var indexList;

    // Function sent as a callback that will be executed
    private var func;

    // Constructor
    public function Code(index, func) {
        this.indexList = index.split(' ');
        this.func = func;
    }

    // Executes the code, if the index is valid.
    public function execute(command) {

        var i = 0;
        var splitCommand = command.split(' ');

        for (i = 0; i < this.indexList.length; i++) {
            if (this.indexList[i] == splitCommand[0]) {
                this.func(splitCommand);
                break;
            }
        }
    }

    // Executes the code, no matter what.
    // (Should not be working)
    private function executeImmediate() {
        this.func();
    }

}