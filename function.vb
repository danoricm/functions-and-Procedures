' function.vb
Module FunctionExample
    Function MyFunction(param As Integer) As Integer
        Dim x As Integer = param
        x += 10
        If x > 15 Then
            x -= 5
        Else
            x += 5
        End If
        For i As Integer = 0 To 2
            x += i
        Next
        Return x
    End Function

    Sub Main()
        Console.Write("Enter an integer: ")
        Dim input As String = Console.ReadLine()
        Dim param As Integer
        If Integer.TryParse(input, param) Then
            Console.WriteLine(MyFunction(param))
        Else
            Console.WriteLine("Invalid input")
        End If
    End Sub
End Module
