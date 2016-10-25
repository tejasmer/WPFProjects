using System;
using System.Collections.Generic;
using System.Text;
using System.Windows;

namespace ResourceLibrary
{
    public class CustomResources
    {
        public static ComponentResourceKey HappyTileBrush
        {
            get
            {
                return new ComponentResourceKey(typeof(CustomResources), "HappyTileBrush");
            }
        }
    }
}
