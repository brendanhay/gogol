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
-- Module      : Network.Google.Resource.DFAReporting.DynamicTargetingKeys.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an existing dynamic targeting key.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.dynamicTargetingKeys.delete@.
module Network.Google.Resource.DFAReporting.DynamicTargetingKeys.Delete
    (
    -- * REST Resource
      DynamicTargetingKeysDeleteResource

    -- * Creating a Request
    , dynamicTargetingKeysDelete
    , DynamicTargetingKeysDelete

    -- * Request Lenses
    , dtkdXgafv
    , dtkdUploadProtocol
    , dtkdObjectType
    , dtkdAccessToken
    , dtkdObjectId
    , dtkdUploadType
    , dtkdProFileId
    , dtkdName
    , dtkdCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.dynamicTargetingKeys.delete@ method which the
-- 'DynamicTargetingKeysDelete' request conforms to.
type DynamicTargetingKeysDeleteResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "dynamicTargetingKeys" :>
               Capture "objectId" (Textual Int64) :>
                 QueryParam "name" Text :>
                   QueryParam "objectType"
                     DynamicTargetingKeysDeleteObjectType
                     :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes an existing dynamic targeting key.
--
-- /See:/ 'dynamicTargetingKeysDelete' smart constructor.
data DynamicTargetingKeysDelete =
  DynamicTargetingKeysDelete'
    { _dtkdXgafv :: !(Maybe Xgafv)
    , _dtkdUploadProtocol :: !(Maybe Text)
    , _dtkdObjectType :: !DynamicTargetingKeysDeleteObjectType
    , _dtkdAccessToken :: !(Maybe Text)
    , _dtkdObjectId :: !(Textual Int64)
    , _dtkdUploadType :: !(Maybe Text)
    , _dtkdProFileId :: !(Textual Int64)
    , _dtkdName :: !Text
    , _dtkdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DynamicTargetingKeysDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtkdXgafv'
--
-- * 'dtkdUploadProtocol'
--
-- * 'dtkdObjectType'
--
-- * 'dtkdAccessToken'
--
-- * 'dtkdObjectId'
--
-- * 'dtkdUploadType'
--
-- * 'dtkdProFileId'
--
-- * 'dtkdName'
--
-- * 'dtkdCallback'
dynamicTargetingKeysDelete
    :: DynamicTargetingKeysDeleteObjectType -- ^ 'dtkdObjectType'
    -> Int64 -- ^ 'dtkdObjectId'
    -> Int64 -- ^ 'dtkdProFileId'
    -> Text -- ^ 'dtkdName'
    -> DynamicTargetingKeysDelete
dynamicTargetingKeysDelete pDtkdObjectType_ pDtkdObjectId_ pDtkdProFileId_ pDtkdName_ =
  DynamicTargetingKeysDelete'
    { _dtkdXgafv = Nothing
    , _dtkdUploadProtocol = Nothing
    , _dtkdObjectType = pDtkdObjectType_
    , _dtkdAccessToken = Nothing
    , _dtkdObjectId = _Coerce # pDtkdObjectId_
    , _dtkdUploadType = Nothing
    , _dtkdProFileId = _Coerce # pDtkdProFileId_
    , _dtkdName = pDtkdName_
    , _dtkdCallback = Nothing
    }


-- | V1 error format.
dtkdXgafv :: Lens' DynamicTargetingKeysDelete (Maybe Xgafv)
dtkdXgafv
  = lens _dtkdXgafv (\ s a -> s{_dtkdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dtkdUploadProtocol :: Lens' DynamicTargetingKeysDelete (Maybe Text)
dtkdUploadProtocol
  = lens _dtkdUploadProtocol
      (\ s a -> s{_dtkdUploadProtocol = a})

-- | Type of the object of this dynamic targeting key. This is a required
-- field.
dtkdObjectType :: Lens' DynamicTargetingKeysDelete DynamicTargetingKeysDeleteObjectType
dtkdObjectType
  = lens _dtkdObjectType
      (\ s a -> s{_dtkdObjectType = a})

-- | OAuth access token.
dtkdAccessToken :: Lens' DynamicTargetingKeysDelete (Maybe Text)
dtkdAccessToken
  = lens _dtkdAccessToken
      (\ s a -> s{_dtkdAccessToken = a})

-- | ID of the object of this dynamic targeting key. This is a required
-- field.
dtkdObjectId :: Lens' DynamicTargetingKeysDelete Int64
dtkdObjectId
  = lens _dtkdObjectId (\ s a -> s{_dtkdObjectId = a})
      . _Coerce

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dtkdUploadType :: Lens' DynamicTargetingKeysDelete (Maybe Text)
dtkdUploadType
  = lens _dtkdUploadType
      (\ s a -> s{_dtkdUploadType = a})

-- | User profile ID associated with this request.
dtkdProFileId :: Lens' DynamicTargetingKeysDelete Int64
dtkdProFileId
  = lens _dtkdProFileId
      (\ s a -> s{_dtkdProFileId = a})
      . _Coerce

-- | Name of this dynamic targeting key. This is a required field. Must be
-- less than 256 characters long and cannot contain commas. All characters
-- are converted to lowercase.
dtkdName :: Lens' DynamicTargetingKeysDelete Text
dtkdName = lens _dtkdName (\ s a -> s{_dtkdName = a})

-- | JSONP
dtkdCallback :: Lens' DynamicTargetingKeysDelete (Maybe Text)
dtkdCallback
  = lens _dtkdCallback (\ s a -> s{_dtkdCallback = a})

instance GoogleRequest DynamicTargetingKeysDelete
         where
        type Rs DynamicTargetingKeysDelete = ()
        type Scopes DynamicTargetingKeysDelete =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient DynamicTargetingKeysDelete'{..}
          = go _dtkdProFileId _dtkdObjectId (Just _dtkdName)
              (Just _dtkdObjectType)
              _dtkdXgafv
              _dtkdUploadProtocol
              _dtkdAccessToken
              _dtkdUploadType
              _dtkdCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy DynamicTargetingKeysDeleteResource)
                      mempty
