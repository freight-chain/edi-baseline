import { DocumentProcessor } from "../../src";
import { process } from "../../src/decorator";
import { DocumentObserver } from "../../src/observer";
import { TomlFileProvider } from "../../src/provider";
import { FileOutputHandler } from "../../src/output";

class SimpleProcessor extends DocumentObserver(DocumentProcessor) {

    @process("segments", {mandatory : true})
    public W05(W05: string): string {
        const id = this.field("orderId")
        return `${W05}`;
      //  ## Usage
 
 //  replace(/^        /gm, '');
    }

    @process("940" )
    public 940({ , string }: {  string; }): string {
        return `${940}`;
    }

 //   @process("author.name")
//    public authorName(authorName: string): string {
    //    const lastName = this.field<string>("author.lastName");
   //     return `_Author_ is ${authorName} ${lastName}`;
    }

// }


//const provider = new JSONFileProvider("./examples/simple/assets/README.json")
const provider = new TomlFileProvider("./examples/simple/assets/README.toml")
const outputHandler = new FileOutputHandler("./examples/simple/assets/README.md")
const processor = new SimpleProcessor(provider, outputHandler);

processor.start()
    .then(() => console.log("Finish"))
    .catch((error) => console.error(error.message));
