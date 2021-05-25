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
-- Module      : Network.Google.Resource.DFAReporting.DynamicTargetingKeys.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of dynamic targeting keys.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.dynamicTargetingKeys.list@.
module Network.Google.Resource.DFAReporting.DynamicTargetingKeys.List
    (
    -- * REST Resource
      DynamicTargetingKeysListResource

    -- * Creating a Request
    , dynamicTargetingKeysList
    , DynamicTargetingKeysList

    -- * Request Lenses
    , dtklXgafv
    , dtklUploadProtocol
    , dtklObjectType
    , dtklAccessToken
    , dtklAdvertiserId
    , dtklObjectId
    , dtklUploadType
    , dtklProFileId
    , dtklNames
    , dtklCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.dynamicTargetingKeys.list@ method which the
-- 'DynamicTargetingKeysList' request conforms to.
type DynamicTargetingKeysListResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "dynamicTargetingKeys" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "objectType"
                     DynamicTargetingKeysListObjectType
                     :>
                     QueryParam "access_token" Text :>
                       QueryParam "advertiserId" (Textual Int64) :>
                         QueryParam "objectId" (Textual Int64) :>
                           QueryParam "uploadType" Text :>
                             QueryParams "names" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] DynamicTargetingKeysListResponse

-- | Retrieves a list of dynamic targeting keys.
--
-- /See:/ 'dynamicTargetingKeysList' smart constructor.
data DynamicTargetingKeysList =
  DynamicTargetingKeysList'
    { _dtklXgafv :: !(Maybe Xgafv)
    , _dtklUploadProtocol :: !(Maybe Text)
    , _dtklObjectType :: !(Maybe DynamicTargetingKeysListObjectType)
    , _dtklAccessToken :: !(Maybe Text)
    , _dtklAdvertiserId :: !(Maybe (Textual Int64))
    , _dtklObjectId :: !(Maybe (Textual Int64))
    , _dtklUploadType :: !(Maybe Text)
    , _dtklProFileId :: !(Textual Int64)
    , _dtklNames :: !(Maybe [Text])
    , _dtklCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DynamicTargetingKeysList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtklXgafv'
--
-- * 'dtklUploadProtocol'
--
-- * 'dtklObjectType'
--
-- * 'dtklAccessToken'
--
-- * 'dtklAdvertiserId'
--
-- * 'dtklObjectId'
--
-- * 'dtklUploadType'
--
-- * 'dtklProFileId'
--
-- * 'dtklNames'
--
-- * 'dtklCallback'
dynamicTargetingKeysList
    :: Int64 -- ^ 'dtklProFileId'
    -> DynamicTargetingKeysList
dynamicTargetingKeysList pDtklProFileId_ =
  DynamicTargetingKeysList'
    { _dtklXgafv = Nothing
    , _dtklUploadProtocol = Nothing
    , _dtklObjectType = Nothing
    , _dtklAccessToken = Nothing
    , _dtklAdvertiserId = Nothing
    , _dtklObjectId = Nothing
    , _dtklUploadType = Nothing
    , _dtklProFileId = _Coerce # pDtklProFileId_
    , _dtklNames = Nothing
    , _dtklCallback = Nothing
    }


-- | V1 error format.
dtklXgafv :: Lens' DynamicTargetingKeysList (Maybe Xgafv)
dtklXgafv
  = lens _dtklXgafv (\ s a -> s{_dtklXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dtklUploadProtocol :: Lens' DynamicTargetingKeysList (Maybe Text)
dtklUploadProtocol
  = lens _dtklUploadProtocol
      (\ s a -> s{_dtklUploadProtocol = a})

-- | Select only dynamic targeting keys with this object type.
dtklObjectType :: Lens' DynamicTargetingKeysList (Maybe DynamicTargetingKeysListObjectType)
dtklObjectType
  = lens _dtklObjectType
      (\ s a -> s{_dtklObjectType = a})

-- | OAuth access token.
dtklAccessToken :: Lens' DynamicTargetingKeysList (Maybe Text)
dtklAccessToken
  = lens _dtklAccessToken
      (\ s a -> s{_dtklAccessToken = a})

-- | Select only dynamic targeting keys whose object has this advertiser ID.
dtklAdvertiserId :: Lens' DynamicTargetingKeysList (Maybe Int64)
dtklAdvertiserId
  = lens _dtklAdvertiserId
      (\ s a -> s{_dtklAdvertiserId = a})
      . mapping _Coerce

-- | Select only dynamic targeting keys with this object ID.
dtklObjectId :: Lens' DynamicTargetingKeysList (Maybe Int64)
dtklObjectId
  = lens _dtklObjectId (\ s a -> s{_dtklObjectId = a})
      . mapping _Coerce

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dtklUploadType :: Lens' DynamicTargetingKeysList (Maybe Text)
dtklUploadType
  = lens _dtklUploadType
      (\ s a -> s{_dtklUploadType = a})

-- | User profile ID associated with this request.
dtklProFileId :: Lens' DynamicTargetingKeysList Int64
dtklProFileId
  = lens _dtklProFileId
      (\ s a -> s{_dtklProFileId = a})
      . _Coerce

-- | Select only dynamic targeting keys exactly matching these names.
dtklNames :: Lens' DynamicTargetingKeysList [Text]
dtklNames
  = lens _dtklNames (\ s a -> s{_dtklNames = a}) .
      _Default
      . _Coerce

-- | JSONP
dtklCallback :: Lens' DynamicTargetingKeysList (Maybe Text)
dtklCallback
  = lens _dtklCallback (\ s a -> s{_dtklCallback = a})

instance GoogleRequest DynamicTargetingKeysList where
        type Rs DynamicTargetingKeysList =
             DynamicTargetingKeysListResponse
        type Scopes DynamicTargetingKeysList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient DynamicTargetingKeysList'{..}
          = go _dtklProFileId _dtklXgafv _dtklUploadProtocol
              _dtklObjectType
              _dtklAccessToken
              _dtklAdvertiserId
              _dtklObjectId
              _dtklUploadType
              (_dtklNames ^. _Default)
              _dtklCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy DynamicTargetingKeysListResource)
                      mempty
