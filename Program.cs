
 using System;
 namespace wk1CodeChallengeProblem2
 {
    class Program
    {
        static void Main()
        {
            //example1
            List<int> list1 = new List<int>() { 1, 4 ,5 };
            List<int> list2 = new List<int>() { 1, 3, 4 };
            List<int> list3 = new List<int>() { 2, 6 };
            List<int>[] List = new List<int>[] { list1, list2, list3 };
            List<int> sortedList= mergeKSortedLists.mergeLists(List);

            foreach(int k in sortedList)
            {
                Console.Write(k);
            }
           
        }

        public class mergeKSortedLists
    {
        public static List<int> mergeLists(List<int>[] List)
        {
            List<int> sortedList  = new List<int>();
            //int l= List.Length;
            foreach (List<int> list in List)
            {
                foreach (int n in list)
                {
                    sortedList.Add(n);
                }
            }
            sortedList.Sort();
            return sortedList;
        }
    }



    }
 }
 
 
 
 