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
-- Module      : Network.Google.Resource.DFAReporting.DynamicTargetingKeys.Insert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new dynamic targeting key. Keys must be created at the
-- advertiser level before being assigned to the advertiser\'s ads,
-- creatives, or placements. There is a maximum of 1000 keys per
-- advertiser, out of which a maximum of 20 keys can be assigned per ad,
-- creative, or placement.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.dynamicTargetingKeys.insert@.
module Network.Google.Resource.DFAReporting.DynamicTargetingKeys.Insert
    (
    -- * REST Resource
      DynamicTargetingKeysInsertResource

    -- * Creating a Request
    , dynamicTargetingKeysInsert
    , DynamicTargetingKeysInsert

    -- * Request Lenses
    , dtkiXgafv
    , dtkiUploadProtocol
    , dtkiAccessToken
    , dtkiUploadType
    , dtkiProFileId
    , dtkiPayload
    , dtkiCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.dynamicTargetingKeys.insert@ method which the
-- 'DynamicTargetingKeysInsert' request conforms to.
type DynamicTargetingKeysInsertResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "dynamicTargetingKeys" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] DynamicTargetingKey :>
                             Post '[JSON] DynamicTargetingKey

-- | Inserts a new dynamic targeting key. Keys must be created at the
-- advertiser level before being assigned to the advertiser\'s ads,
-- creatives, or placements. There is a maximum of 1000 keys per
-- advertiser, out of which a maximum of 20 keys can be assigned per ad,
-- creative, or placement.
--
-- /See:/ 'dynamicTargetingKeysInsert' smart constructor.
data DynamicTargetingKeysInsert =
  DynamicTargetingKeysInsert'
    { _dtkiXgafv :: !(Maybe Xgafv)
    , _dtkiUploadProtocol :: !(Maybe Text)
    , _dtkiAccessToken :: !(Maybe Text)
    , _dtkiUploadType :: !(Maybe Text)
    , _dtkiProFileId :: !(Textual Int64)
    , _dtkiPayload :: !DynamicTargetingKey
    , _dtkiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DynamicTargetingKeysInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtkiXgafv'
--
-- * 'dtkiUploadProtocol'
--
-- * 'dtkiAccessToken'
--
-- * 'dtkiUploadType'
--
-- * 'dtkiProFileId'
--
-- * 'dtkiPayload'
--
-- * 'dtkiCallback'
dynamicTargetingKeysInsert
    :: Int64 -- ^ 'dtkiProFileId'
    -> DynamicTargetingKey -- ^ 'dtkiPayload'
    -> DynamicTargetingKeysInsert
dynamicTargetingKeysInsert pDtkiProFileId_ pDtkiPayload_ =
  DynamicTargetingKeysInsert'
    { _dtkiXgafv = Nothing
    , _dtkiUploadProtocol = Nothing
    , _dtkiAccessToken = Nothing
    , _dtkiUploadType = Nothing
    , _dtkiProFileId = _Coerce # pDtkiProFileId_
    , _dtkiPayload = pDtkiPayload_
    , _dtkiCallback = Nothing
    }


-- | V1 error format.
dtkiXgafv :: Lens' DynamicTargetingKeysInsert (Maybe Xgafv)
dtkiXgafv
  = lens _dtkiXgafv (\ s a -> s{_dtkiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dtkiUploadProtocol :: Lens' DynamicTargetingKeysInsert (Maybe Text)
dtkiUploadProtocol
  = lens _dtkiUploadProtocol
      (\ s a -> s{_dtkiUploadProtocol = a})

-- | OAuth access token.
dtkiAccessToken :: Lens' DynamicTargetingKeysInsert (Maybe Text)
dtkiAccessToken
  = lens _dtkiAccessToken
      (\ s a -> s{_dtkiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dtkiUploadType :: Lens' DynamicTargetingKeysInsert (Maybe Text)
dtkiUploadType
  = lens _dtkiUploadType
      (\ s a -> s{_dtkiUploadType = a})

-- | User profile ID associated with this request.
dtkiProFileId :: Lens' DynamicTargetingKeysInsert Int64
dtkiProFileId
  = lens _dtkiProFileId
      (\ s a -> s{_dtkiProFileId = a})
      . _Coerce

-- | Multipart request metadata.
dtkiPayload :: Lens' DynamicTargetingKeysInsert DynamicTargetingKey
dtkiPayload
  = lens _dtkiPayload (\ s a -> s{_dtkiPayload = a})

-- | JSONP
dtkiCallback :: Lens' DynamicTargetingKeysInsert (Maybe Text)
dtkiCallback
  = lens _dtkiCallback (\ s a -> s{_dtkiCallback = a})

instance GoogleRequest DynamicTargetingKeysInsert
         where
        type Rs DynamicTargetingKeysInsert =
             DynamicTargetingKey
        type Scopes DynamicTargetingKeysInsert =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient DynamicTargetingKeysInsert'{..}
          = go _dtkiProFileId _dtkiXgafv _dtkiUploadProtocol
              _dtkiAccessToken
              _dtkiUploadType
              _dtkiCallback
              (Just AltJSON)
              _dtkiPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy DynamicTargetingKeysInsertResource)
                      mempty
