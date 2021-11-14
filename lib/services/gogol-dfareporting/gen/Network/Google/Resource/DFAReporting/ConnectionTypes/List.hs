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
-- Module      : Network.Google.Resource.DFAReporting.ConnectionTypes.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of connection types.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.connectionTypes.list@.
module Network.Google.Resource.DFAReporting.ConnectionTypes.List
    (
    -- * REST Resource
      ConnectionTypesListResource

    -- * Creating a Request
    , connectionTypesList
    , ConnectionTypesList

    -- * Request Lenses
    , ctlXgafv
    , ctlUploadProtocol
    , ctlAccessToken
    , ctlUploadType
    , ctlProFileId
    , ctlCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.connectionTypes.list@ method which the
-- 'ConnectionTypesList' request conforms to.
type ConnectionTypesListResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "connectionTypes" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ConnectionTypesListResponse

-- | Retrieves a list of connection types.
--
-- /See:/ 'connectionTypesList' smart constructor.
data ConnectionTypesList =
  ConnectionTypesList'
    { _ctlXgafv :: !(Maybe Xgafv)
    , _ctlUploadProtocol :: !(Maybe Text)
    , _ctlAccessToken :: !(Maybe Text)
    , _ctlUploadType :: !(Maybe Text)
    , _ctlProFileId :: !(Textual Int64)
    , _ctlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ConnectionTypesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctlXgafv'
--
-- * 'ctlUploadProtocol'
--
-- * 'ctlAccessToken'
--
-- * 'ctlUploadType'
--
-- * 'ctlProFileId'
--
-- * 'ctlCallback'
connectionTypesList
    :: Int64 -- ^ 'ctlProFileId'
    -> ConnectionTypesList
connectionTypesList pCtlProFileId_ =
  ConnectionTypesList'
    { _ctlXgafv = Nothing
    , _ctlUploadProtocol = Nothing
    , _ctlAccessToken = Nothing
    , _ctlUploadType = Nothing
    , _ctlProFileId = _Coerce # pCtlProFileId_
    , _ctlCallback = Nothing
    }


-- | V1 error format.
ctlXgafv :: Lens' ConnectionTypesList (Maybe Xgafv)
ctlXgafv = lens _ctlXgafv (\ s a -> s{_ctlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ctlUploadProtocol :: Lens' ConnectionTypesList (Maybe Text)
ctlUploadProtocol
  = lens _ctlUploadProtocol
      (\ s a -> s{_ctlUploadProtocol = a})

-- | OAuth access token.
ctlAccessToken :: Lens' ConnectionTypesList (Maybe Text)
ctlAccessToken
  = lens _ctlAccessToken
      (\ s a -> s{_ctlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ctlUploadType :: Lens' ConnectionTypesList (Maybe Text)
ctlUploadType
  = lens _ctlUploadType
      (\ s a -> s{_ctlUploadType = a})

-- | User profile ID associated with this request.
ctlProFileId :: Lens' ConnectionTypesList Int64
ctlProFileId
  = lens _ctlProFileId (\ s a -> s{_ctlProFileId = a})
      . _Coerce

-- | JSONP
ctlCallback :: Lens' ConnectionTypesList (Maybe Text)
ctlCallback
  = lens _ctlCallback (\ s a -> s{_ctlCallback = a})

instance GoogleRequest ConnectionTypesList where
        type Rs ConnectionTypesList =
             ConnectionTypesListResponse
        type Scopes ConnectionTypesList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient ConnectionTypesList'{..}
          = go _ctlProFileId _ctlXgafv _ctlUploadProtocol
              _ctlAccessToken
              _ctlUploadType
              _ctlCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy ConnectionTypesListResource)
                      mempty
