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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one order document by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingOrderDocumentsGet@.
module Network.Google.Resource.DFAReporting.OrderDocuments.Get
    (
    -- * REST Resource
      OrderDocumentsGetResource

    -- * Creating a Request
    , orderDocumentsGet'
    , OrderDocumentsGet'

    -- * Request Lenses
    , odgProFileId
    , odgId
    , odgProjectId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingOrderDocumentsGet@ method which the
-- 'OrderDocumentsGet'' request conforms to.
type OrderDocumentsGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "projects" :>
           Capture "projectId" Int64 :>
             "orderDocuments" :>
               Capture "id" Int64 :>
                 QueryParam "alt" AltJSON :> Get '[JSON] OrderDocument

-- | Gets one order document by ID.
--
-- /See:/ 'orderDocumentsGet'' smart constructor.
data OrderDocumentsGet' = OrderDocumentsGet'
    { _odgProFileId :: !Int64
    , _odgId        :: !Int64
    , _odgProjectId :: !Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrderDocumentsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'odgProFileId'
--
-- * 'odgId'
--
-- * 'odgProjectId'
orderDocumentsGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> Int64 -- ^ 'projectId'
    -> OrderDocumentsGet'
orderDocumentsGet' pOdgProFileId_ pOdgId_ pOdgProjectId_ =
    OrderDocumentsGet'
    { _odgProFileId = pOdgProFileId_
    , _odgId = pOdgId_
    , _odgProjectId = pOdgProjectId_
    }

-- | User profile ID associated with this request.
odgProFileId :: Lens' OrderDocumentsGet' Int64
odgProFileId
  = lens _odgProFileId (\ s a -> s{_odgProFileId = a})

-- | Order document ID.
odgId :: Lens' OrderDocumentsGet' Int64
odgId = lens _odgId (\ s a -> s{_odgId = a})

-- | Project ID for order documents.
odgProjectId :: Lens' OrderDocumentsGet' Int64
odgProjectId
  = lens _odgProjectId (\ s a -> s{_odgProjectId = a})

instance GoogleRequest OrderDocumentsGet' where
        type Rs OrderDocumentsGet' = OrderDocument
        requestClient OrderDocumentsGet'{..}
          = go _odgProFileId _odgProjectId _odgId
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy OrderDocumentsGetResource)
                      mempty
