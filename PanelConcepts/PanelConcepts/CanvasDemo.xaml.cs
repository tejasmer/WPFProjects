using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace PanelConcepts
{
    /// <summary>
    /// Interaction logic for CanvasDemo.xaml
    /// </summary>
    public partial class CanvasDemo : Window
    {
        public CanvasDemo()
        {
            InitializeComponent();
            AddEllipseRegisterEvents();
        }

        private void AddEllipseRegisterEvents()
        {
            Nullable<Point> dragStart = null;

            MouseButtonEventHandler mouseDown = (sender, args) =>
            {
                var element = (UIElement)sender;
                dragStart = args.GetPosition(element);
                element.CaptureMouse();
            };
            MouseButtonEventHandler mouseUp = (sender, args) =>
            {
                var element = (UIElement)sender;
                dragStart = null;
                element.ReleaseMouseCapture();
            };
            MouseEventHandler mouseMove = (sender, args) =>
            {
                if (dragStart != null && args.LeftButton == MouseButtonState.Pressed)
                {
                    var element = (UIElement)sender;
                    var p2 = args.GetPosition(canvas);
                    Canvas.SetLeft(element, p2.X - dragStart.Value.X);
                    Canvas.SetTop(element, p2.Y - dragStart.Value.Y);
                }
            };

            Action<UIElement> enableDrag = (element) => { element.MouseDown += mouseDown; element.MouseMove += mouseMove; element.MouseUp += mouseUp; };
            var shapes = new UIElement[] { new Ellipse() { Fill = Brushes.Green, Width = 100, Height = 100 }, new Rectangle() { Fill = Brushes.Yellow, Width = 200, Height = 100 } };

            foreach (var shape in shapes)
            {
                enableDrag(shape);
                canvas.Children.Add(shape);
            }
        }
    }
}
