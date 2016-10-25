﻿using System;
using System.Windows;
using System.Windows.Data;

namespace MVVMConcepts.Helpers
{
    /// <summary>
    /// Converter that converts a bool to a Visibility status
    /// </summary>
    public class VisibilityConverter : IValueConverter
    {
        #region IValueConverter Members

        public object Convert(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            return (bool)value ? Visibility.Visible : Visibility.Collapsed;
        }

        public object ConvertBack(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            throw new NotImplementedException();
        }

        #endregion
    }
}
