{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.OrderDocuments.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one order document by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.orderDocuments.get@.
module Network.Google.Resource.DFAReporting.OrderDocuments.Get
    (
    -- * REST Resource
      OrderDocumentsGetResource

    -- * Creating a Request
    , orderDocumentsGet
    , OrderDocumentsGet

    -- * Request Lenses
    , odgProFileId
    , odgId
    , odgProjectId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.orderDocuments.get@ method which the
-- 'OrderDocumentsGet' request conforms to.
type OrderDocumentsGetResource =
     "dfareporting" :>
       "v2.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "projects" :>
               Capture "projectId" (Textual Int64) :>
                 "orderDocuments" :>
                   Capture "id" (Textual Int64) :>
                     QueryParam "alt" AltJSON :> Get '[JSON] OrderDocument

-- | Gets one order document by ID.
--
-- /See:/ 'orderDocumentsGet' smart constructor.
data OrderDocumentsGet = OrderDocumentsGet'
    { _odgProFileId :: !(Textual Int64)
    , _odgId        :: !(Textual Int64)
    , _odgProjectId :: !(Textual Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrderDocumentsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'odgProFileId'
--
-- * 'odgId'
--
-- * 'odgProjectId'
orderDocumentsGet
    :: Int64 -- ^ 'odgProFileId'
    -> Int64 -- ^ 'odgId'
    -> Int64 -- ^ 'odgProjectId'
    -> OrderDocumentsGet
orderDocumentsGet pOdgProFileId_ pOdgId_ pOdgProjectId_ =
    OrderDocumentsGet'
    { _odgProFileId = _Coerce # pOdgProFileId_
    , _odgId = _Coerce # pOdgId_
    , _odgProjectId = _Coerce # pOdgProjectId_
    }

-- | User profile ID associated with this request.
odgProFileId :: Lens' OrderDocumentsGet Int64
odgProFileId
  = lens _odgProFileId (\ s a -> s{_odgProFileId = a})
      . _Coerce

-- | Order document ID.
odgId :: Lens' OrderDocumentsGet Int64
odgId
  = lens _odgId (\ s a -> s{_odgId = a}) . _Coerce

-- | Project ID for order documents.
odgProjectId :: Lens' OrderDocumentsGet Int64
odgProjectId
  = lens _odgProjectId (\ s a -> s{_odgProjectId = a})
      . _Coerce

instance GoogleRequest OrderDocumentsGet where
        type Rs OrderDocumentsGet = OrderDocument
        type Scopes OrderDocumentsGet =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient OrderDocumentsGet'{..}
          = go _odgProFileId _odgProjectId _odgId
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy OrderDocumentsGetResource)
                      mempty
