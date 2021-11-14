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
-- Module      : Network.Google.Resource.DFAReporting.CreativeGroups.Insert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new creative group.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.creativeGroups.insert@.
module Network.Google.Resource.DFAReporting.CreativeGroups.Insert
    (
    -- * REST Resource
      CreativeGroupsInsertResource

    -- * Creating a Request
    , creativeGroupsInsert
    , CreativeGroupsInsert

    -- * Request Lenses
    , cgiXgafv
    , cgiUploadProtocol
    , cgiAccessToken
    , cgiUploadType
    , cgiProFileId
    , cgiPayload
    , cgiCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.creativeGroups.insert@ method which the
-- 'CreativeGroupsInsert' request conforms to.
type CreativeGroupsInsertResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "creativeGroups" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] CreativeGroup :>
                             Post '[JSON] CreativeGroup

-- | Inserts a new creative group.
--
-- /See:/ 'creativeGroupsInsert' smart constructor.
data CreativeGroupsInsert =
  CreativeGroupsInsert'
    { _cgiXgafv :: !(Maybe Xgafv)
    , _cgiUploadProtocol :: !(Maybe Text)
    , _cgiAccessToken :: !(Maybe Text)
    , _cgiUploadType :: !(Maybe Text)
    , _cgiProFileId :: !(Textual Int64)
    , _cgiPayload :: !CreativeGroup
    , _cgiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreativeGroupsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgiXgafv'
--
-- * 'cgiUploadProtocol'
--
-- * 'cgiAccessToken'
--
-- * 'cgiUploadType'
--
-- * 'cgiProFileId'
--
-- * 'cgiPayload'
--
-- * 'cgiCallback'
creativeGroupsInsert
    :: Int64 -- ^ 'cgiProFileId'
    -> CreativeGroup -- ^ 'cgiPayload'
    -> CreativeGroupsInsert
creativeGroupsInsert pCgiProFileId_ pCgiPayload_ =
  CreativeGroupsInsert'
    { _cgiXgafv = Nothing
    , _cgiUploadProtocol = Nothing
    , _cgiAccessToken = Nothing
    , _cgiUploadType = Nothing
    , _cgiProFileId = _Coerce # pCgiProFileId_
    , _cgiPayload = pCgiPayload_
    , _cgiCallback = Nothing
    }


-- | V1 error format.
cgiXgafv :: Lens' CreativeGroupsInsert (Maybe Xgafv)
cgiXgafv = lens _cgiXgafv (\ s a -> s{_cgiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cgiUploadProtocol :: Lens' CreativeGroupsInsert (Maybe Text)
cgiUploadProtocol
  = lens _cgiUploadProtocol
      (\ s a -> s{_cgiUploadProtocol = a})

-- | OAuth access token.
cgiAccessToken :: Lens' CreativeGroupsInsert (Maybe Text)
cgiAccessToken
  = lens _cgiAccessToken
      (\ s a -> s{_cgiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cgiUploadType :: Lens' CreativeGroupsInsert (Maybe Text)
cgiUploadType
  = lens _cgiUploadType
      (\ s a -> s{_cgiUploadType = a})

-- | User profile ID associated with this request.
cgiProFileId :: Lens' CreativeGroupsInsert Int64
cgiProFileId
  = lens _cgiProFileId (\ s a -> s{_cgiProFileId = a})
      . _Coerce

-- | Multipart request metadata.
cgiPayload :: Lens' CreativeGroupsInsert CreativeGroup
cgiPayload
  = lens _cgiPayload (\ s a -> s{_cgiPayload = a})

-- | JSONP
cgiCallback :: Lens' CreativeGroupsInsert (Maybe Text)
cgiCallback
  = lens _cgiCallback (\ s a -> s{_cgiCallback = a})

instance GoogleRequest CreativeGroupsInsert where
        type Rs CreativeGroupsInsert = CreativeGroup
        type Scopes CreativeGroupsInsert =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient CreativeGroupsInsert'{..}
          = go _cgiProFileId _cgiXgafv _cgiUploadProtocol
              _cgiAccessToken
              _cgiUploadType
              _cgiCallback
              (Just AltJSON)
              _cgiPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy CreativeGroupsInsertResource)
                      mempty
