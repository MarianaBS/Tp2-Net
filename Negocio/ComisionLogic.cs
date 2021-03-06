﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Business.Entities;
using Data.Database;

namespace Business.Logic
{
   public class ComisionLogic : BusinessLogic
    {
       private Data.Database.ComisionAdapter _ComisionData;
        public Data.Database.ComisionAdapter ComisionData 
        { 
            get {return _ComisionData;} 
            set {_ComisionData = value;} 
        }

        public ComisionLogic() 
       {
           ComisionData = new Data.Database.ComisionAdapter();
       }
        
        public List <Comision> GetAll()
        {
            return ComisionData.GetAll();
        }
        public Comision GetOne(int ID)
        {
            return ComisionData.GetOne(ID);
        }
        

        public void Save(Comision a)
        {
            ComisionData.Save(a);
        }
        public void Delete(int ID)
        {
            ComisionData.Delete(ID);
        }
    }
}
