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
-- Module      : Network.Google.Resource.DLP.Organizations.StoredInfoTypes.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a stored infoType. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-stored-infotypes to
-- learn more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.organizations.storedInfoTypes.delete@.
module Network.Google.Resource.DLP.Organizations.StoredInfoTypes.Delete
    (
    -- * REST Resource
      OrganizationsStoredInfoTypesDeleteResource

    -- * Creating a Request
    , organizationsStoredInfoTypesDelete
    , OrganizationsStoredInfoTypesDelete

    -- * Request Lenses
    , ositdXgafv
    , ositdUploadProtocol
    , ositdAccessToken
    , ositdUploadType
    , ositdName
    , ositdCallback
    ) where

import           Network.Google.DLP.Types
import           Network.Google.Prelude

-- | A resource alias for @dlp.organizations.storedInfoTypes.delete@ method which the
-- 'OrganizationsStoredInfoTypesDelete' request conforms to.
type OrganizationsStoredInfoTypesDeleteResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Delete '[JSON] GoogleProtobufEmpty

-- | Deletes a stored infoType. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-stored-infotypes to
-- learn more.
--
-- /See:/ 'organizationsStoredInfoTypesDelete' smart constructor.
data OrganizationsStoredInfoTypesDelete =
  OrganizationsStoredInfoTypesDelete'
    { _ositdXgafv          :: !(Maybe Xgafv)
    , _ositdUploadProtocol :: !(Maybe Text)
    , _ositdAccessToken    :: !(Maybe Text)
    , _ositdUploadType     :: !(Maybe Text)
    , _ositdName           :: !Text
    , _ositdCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsStoredInfoTypesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ositdXgafv'
--
-- * 'ositdUploadProtocol'
--
-- * 'ositdAccessToken'
--
-- * 'ositdUploadType'
--
-- * 'ositdName'
--
-- * 'ositdCallback'
organizationsStoredInfoTypesDelete
    :: Text -- ^ 'ositdName'
    -> OrganizationsStoredInfoTypesDelete
organizationsStoredInfoTypesDelete pOsitdName_ =
  OrganizationsStoredInfoTypesDelete'
    { _ositdXgafv = Nothing
    , _ositdUploadProtocol = Nothing
    , _ositdAccessToken = Nothing
    , _ositdUploadType = Nothing
    , _ositdName = pOsitdName_
    , _ositdCallback = Nothing
    }


-- | V1 error format.
ositdXgafv :: Lens' OrganizationsStoredInfoTypesDelete (Maybe Xgafv)
ositdXgafv
  = lens _ositdXgafv (\ s a -> s{_ositdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ositdUploadProtocol :: Lens' OrganizationsStoredInfoTypesDelete (Maybe Text)
ositdUploadProtocol
  = lens _ositdUploadProtocol
      (\ s a -> s{_ositdUploadProtocol = a})

-- | OAuth access token.
ositdAccessToken :: Lens' OrganizationsStoredInfoTypesDelete (Maybe Text)
ositdAccessToken
  = lens _ositdAccessToken
      (\ s a -> s{_ositdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ositdUploadType :: Lens' OrganizationsStoredInfoTypesDelete (Maybe Text)
ositdUploadType
  = lens _ositdUploadType
      (\ s a -> s{_ositdUploadType = a})

-- | Resource name of the organization and storedInfoType to be deleted, for
-- example \`organizations\/433245324\/storedInfoTypes\/432452342\` or
-- projects\/project-id\/storedInfoTypes\/432452342.
ositdName :: Lens' OrganizationsStoredInfoTypesDelete Text
ositdName
  = lens _ositdName (\ s a -> s{_ositdName = a})

-- | JSONP
ositdCallback :: Lens' OrganizationsStoredInfoTypesDelete (Maybe Text)
ositdCallback
  = lens _ositdCallback
      (\ s a -> s{_ositdCallback = a})

instance GoogleRequest
           OrganizationsStoredInfoTypesDelete
         where
        type Rs OrganizationsStoredInfoTypesDelete =
             GoogleProtobufEmpty
        type Scopes OrganizationsStoredInfoTypesDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient OrganizationsStoredInfoTypesDelete'{..}
          = go _ositdName _ositdXgafv _ositdUploadProtocol
              _ositdAccessToken
              _ositdUploadType
              _ositdCallback
              (Just AltJSON)
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrganizationsStoredInfoTypesDeleteResource)
                      mempty
