using System;
using System.Collections.Generic;
using System.Text;

namespace Chins {
    public struct FaceComponent {
        private string _start;
        private char _repeat;
        private string _body;

        public string Start { get { return _start; } }
        public char Repeat { get { return _repeat; } }
        public string Body { get { return _body; } }

        public FaceComponent(string start, char repeat, string body) {
            _start = start;
            _repeat = repeat;
            _body = body;
        }

        public string Construct(int scale) {
            string s = _start;
            s += String.Empty.PadLeft(scale, _repeat);
            s += _body;

            return s;
        }
    }

    public class FaceComponents {

        private int _scale;

        private FaceComponent _scalp;
        private FaceComponent _eyes;
        private FaceComponent _no_chin_close;
        private FaceComponent _multi_chin_mouth;
        private FaceComponent _chin;
        private FaceComponent _multi_chin_close;

        public string Scalp { get { return _scalp.Construct(_scale); } }
        public string Eyes { get { return _eyes.Construct(_scale); } }
        public string NoChinClose { get { return _no_chin_close.Construct(_scale); } }
        public string MultiChinMouth { get { return _multi_chin_mouth.Construct(_scale); } }
        public string Chin { get { return _chin.Construct(_scale); } }
        public string MultiChinClose { get { return _multi_chin_close.Construct(_scale); } }

        public FaceComponents(int scale) {
            InitializeComponents(scale);
        }

        public void InitializeComponents(int scale) {
            _scale = scale;

            _scalp = new FaceComponent(" ", '_', "________");
            _eyes = new FaceComponent("(", '-', "[ .]-[ .]");
            _no_chin_close = new FaceComponent("(", '_', "_____O__)");
            _multi_chin_mouth = new FaceComponent("(", ' ', "     O  )");
            _chin = new FaceComponent("(", ' ', "         )");
            _multi_chin_close = new FaceComponent("(", '_', "________)");
        }
    }

    class Program {
        static void Main(string[] args) {
            int chins = 0;
            int scale = 2;

            if (args.Length > 0)
                Int32.TryParse(args[0], out chins);

            if (args.Length > 1)
                Int32.TryParse(args[1], out scale);

            FaceComponents fc = new FaceComponents(scale);

            Console.WriteLine(fc.Scalp);
            Console.WriteLine(fc.Eyes);

            if (chins == 0) {
                Console.WriteLine(fc.NoChinClose);
                return;
            }
            else {
                Console.WriteLine(fc.MultiChinMouth);

                while (--chins > 0)
                    Console.WriteLine(fc.Chin);

                Console.WriteLine(fc.MultiChinClose);
            }
        }
    }
}
