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
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.orderDocuments.get@.
module Network.Google.Resource.DFAReporting.OrderDocuments.Get
    (
    -- * REST Resource
      OrderDocumentsGetResource

    -- * Creating a Request
    , orderDocumentsGet
    , OrderDocumentsGet

    -- * Request Lenses
    , odgXgafv
    , odgUploadProtocol
    , odgAccessToken
    , odgUploadType
    , odgProFileId
    , odgId
    , odgProjectId
    , odgCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.orderDocuments.get@ method which the
-- 'OrderDocumentsGet' request conforms to.
type OrderDocumentsGetResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "projects" :>
               Capture "projectId" (Textual Int64) :>
                 "orderDocuments" :>
                   Capture "id" (Textual Int64) :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] OrderDocument

-- | Gets one order document by ID.
--
-- /See:/ 'orderDocumentsGet' smart constructor.
data OrderDocumentsGet =
  OrderDocumentsGet'
    { _odgXgafv :: !(Maybe Xgafv)
    , _odgUploadProtocol :: !(Maybe Text)
    , _odgAccessToken :: !(Maybe Text)
    , _odgUploadType :: !(Maybe Text)
    , _odgProFileId :: !(Textual Int64)
    , _odgId :: !(Textual Int64)
    , _odgProjectId :: !(Textual Int64)
    , _odgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderDocumentsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'odgXgafv'
--
-- * 'odgUploadProtocol'
--
-- * 'odgAccessToken'
--
-- * 'odgUploadType'
--
-- * 'odgProFileId'
--
-- * 'odgId'
--
-- * 'odgProjectId'
--
-- * 'odgCallback'
orderDocumentsGet
    :: Int64 -- ^ 'odgProFileId'
    -> Int64 -- ^ 'odgId'
    -> Int64 -- ^ 'odgProjectId'
    -> OrderDocumentsGet
orderDocumentsGet pOdgProFileId_ pOdgId_ pOdgProjectId_ =
  OrderDocumentsGet'
    { _odgXgafv = Nothing
    , _odgUploadProtocol = Nothing
    , _odgAccessToken = Nothing
    , _odgUploadType = Nothing
    , _odgProFileId = _Coerce # pOdgProFileId_
    , _odgId = _Coerce # pOdgId_
    , _odgProjectId = _Coerce # pOdgProjectId_
    , _odgCallback = Nothing
    }


-- | V1 error format.
odgXgafv :: Lens' OrderDocumentsGet (Maybe Xgafv)
odgXgafv = lens _odgXgafv (\ s a -> s{_odgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
odgUploadProtocol :: Lens' OrderDocumentsGet (Maybe Text)
odgUploadProtocol
  = lens _odgUploadProtocol
      (\ s a -> s{_odgUploadProtocol = a})

-- | OAuth access token.
odgAccessToken :: Lens' OrderDocumentsGet (Maybe Text)
odgAccessToken
  = lens _odgAccessToken
      (\ s a -> s{_odgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
odgUploadType :: Lens' OrderDocumentsGet (Maybe Text)
odgUploadType
  = lens _odgUploadType
      (\ s a -> s{_odgUploadType = a})

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

-- | JSONP
odgCallback :: Lens' OrderDocumentsGet (Maybe Text)
odgCallback
  = lens _odgCallback (\ s a -> s{_odgCallback = a})

instance GoogleRequest OrderDocumentsGet where
        type Rs OrderDocumentsGet = OrderDocument
        type Scopes OrderDocumentsGet =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient OrderDocumentsGet'{..}
          = go _odgProFileId _odgProjectId _odgId _odgXgafv
              _odgUploadProtocol
              _odgAccessToken
              _odgUploadType
              _odgCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy OrderDocumentsGetResource)
                      mempty
