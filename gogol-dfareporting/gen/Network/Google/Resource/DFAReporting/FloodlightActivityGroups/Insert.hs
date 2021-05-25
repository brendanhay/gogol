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
-- Module      : Network.Google.Resource.DFAReporting.FloodlightActivityGroups.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new floodlight activity group.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.floodlightActivityGroups.insert@.
module Network.Google.Resource.DFAReporting.FloodlightActivityGroups.Insert
    (
    -- * REST Resource
      FloodlightActivityGroupsInsertResource

    -- * Creating a Request
    , floodlightActivityGroupsInsert
    , FloodlightActivityGroupsInsert

    -- * Request Lenses
    , fagiXgafv
    , fagiUploadProtocol
    , fagiAccessToken
    , fagiUploadType
    , fagiProFileId
    , fagiPayload
    , fagiCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.floodlightActivityGroups.insert@ method which the
-- 'FloodlightActivityGroupsInsert' request conforms to.
type FloodlightActivityGroupsInsertResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "floodlightActivityGroups" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] FloodlightActivityGroup :>
                             Post '[JSON] FloodlightActivityGroup

-- | Inserts a new floodlight activity group.
--
-- /See:/ 'floodlightActivityGroupsInsert' smart constructor.
data FloodlightActivityGroupsInsert =
  FloodlightActivityGroupsInsert'
    { _fagiXgafv :: !(Maybe Xgafv)
    , _fagiUploadProtocol :: !(Maybe Text)
    , _fagiAccessToken :: !(Maybe Text)
    , _fagiUploadType :: !(Maybe Text)
    , _fagiProFileId :: !(Textual Int64)
    , _fagiPayload :: !FloodlightActivityGroup
    , _fagiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FloodlightActivityGroupsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fagiXgafv'
--
-- * 'fagiUploadProtocol'
--
-- * 'fagiAccessToken'
--
-- * 'fagiUploadType'
--
-- * 'fagiProFileId'
--
-- * 'fagiPayload'
--
-- * 'fagiCallback'
floodlightActivityGroupsInsert
    :: Int64 -- ^ 'fagiProFileId'
    -> FloodlightActivityGroup -- ^ 'fagiPayload'
    -> FloodlightActivityGroupsInsert
floodlightActivityGroupsInsert pFagiProFileId_ pFagiPayload_ =
  FloodlightActivityGroupsInsert'
    { _fagiXgafv = Nothing
    , _fagiUploadProtocol = Nothing
    , _fagiAccessToken = Nothing
    , _fagiUploadType = Nothing
    , _fagiProFileId = _Coerce # pFagiProFileId_
    , _fagiPayload = pFagiPayload_
    , _fagiCallback = Nothing
    }


-- | V1 error format.
fagiXgafv :: Lens' FloodlightActivityGroupsInsert (Maybe Xgafv)
fagiXgafv
  = lens _fagiXgafv (\ s a -> s{_fagiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
fagiUploadProtocol :: Lens' FloodlightActivityGroupsInsert (Maybe Text)
fagiUploadProtocol
  = lens _fagiUploadProtocol
      (\ s a -> s{_fagiUploadProtocol = a})

-- | OAuth access token.
fagiAccessToken :: Lens' FloodlightActivityGroupsInsert (Maybe Text)
fagiAccessToken
  = lens _fagiAccessToken
      (\ s a -> s{_fagiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
fagiUploadType :: Lens' FloodlightActivityGroupsInsert (Maybe Text)
fagiUploadType
  = lens _fagiUploadType
      (\ s a -> s{_fagiUploadType = a})

-- | User profile ID associated with this request.
fagiProFileId :: Lens' FloodlightActivityGroupsInsert Int64
fagiProFileId
  = lens _fagiProFileId
      (\ s a -> s{_fagiProFileId = a})
      . _Coerce

-- | Multipart request metadata.
fagiPayload :: Lens' FloodlightActivityGroupsInsert FloodlightActivityGroup
fagiPayload
  = lens _fagiPayload (\ s a -> s{_fagiPayload = a})

-- | JSONP
fagiCallback :: Lens' FloodlightActivityGroupsInsert (Maybe Text)
fagiCallback
  = lens _fagiCallback (\ s a -> s{_fagiCallback = a})

instance GoogleRequest FloodlightActivityGroupsInsert
         where
        type Rs FloodlightActivityGroupsInsert =
             FloodlightActivityGroup
        type Scopes FloodlightActivityGroupsInsert =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient FloodlightActivityGroupsInsert'{..}
          = go _fagiProFileId _fagiXgafv _fagiUploadProtocol
              _fagiAccessToken
              _fagiUploadType
              _fagiCallback
              (Just AltJSON)
              _fagiPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy FloodlightActivityGroupsInsertResource)
                      mempty
