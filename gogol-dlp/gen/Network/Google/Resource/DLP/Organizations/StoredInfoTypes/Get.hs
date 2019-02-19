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
-- Module      : Network.Google.Resource.DLP.Organizations.StoredInfoTypes.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a stored infoType. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-stored-infotypes to
-- learn more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.organizations.storedInfoTypes.get@.
module Network.Google.Resource.DLP.Organizations.StoredInfoTypes.Get
    (
    -- * REST Resource
      OrganizationsStoredInfoTypesGetResource

    -- * Creating a Request
    , organizationsStoredInfoTypesGet
    , OrganizationsStoredInfoTypesGet

    -- * Request Lenses
    , ositgXgafv
    , ositgUploadProtocol
    , ositgAccessToken
    , ositgUploadType
    , ositgName
    , ositgCallback
    ) where

import           Network.Google.DLP.Types
import           Network.Google.Prelude

-- | A resource alias for @dlp.organizations.storedInfoTypes.get@ method which the
-- 'OrganizationsStoredInfoTypesGet' request conforms to.
type OrganizationsStoredInfoTypesGetResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] GooglePrivacyDlpV2StoredInfoType

-- | Gets a stored infoType. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-stored-infotypes to
-- learn more.
--
-- /See:/ 'organizationsStoredInfoTypesGet' smart constructor.
data OrganizationsStoredInfoTypesGet =
  OrganizationsStoredInfoTypesGet'
    { _ositgXgafv          :: !(Maybe Xgafv)
    , _ositgUploadProtocol :: !(Maybe Text)
    , _ositgAccessToken    :: !(Maybe Text)
    , _ositgUploadType     :: !(Maybe Text)
    , _ositgName           :: !Text
    , _ositgCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrganizationsStoredInfoTypesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ositgXgafv'
--
-- * 'ositgUploadProtocol'
--
-- * 'ositgAccessToken'
--
-- * 'ositgUploadType'
--
-- * 'ositgName'
--
-- * 'ositgCallback'
organizationsStoredInfoTypesGet
    :: Text -- ^ 'ositgName'
    -> OrganizationsStoredInfoTypesGet
organizationsStoredInfoTypesGet pOsitgName_ =
  OrganizationsStoredInfoTypesGet'
    { _ositgXgafv = Nothing
    , _ositgUploadProtocol = Nothing
    , _ositgAccessToken = Nothing
    , _ositgUploadType = Nothing
    , _ositgName = pOsitgName_
    , _ositgCallback = Nothing
    }

-- | V1 error format.
ositgXgafv :: Lens' OrganizationsStoredInfoTypesGet (Maybe Xgafv)
ositgXgafv
  = lens _ositgXgafv (\ s a -> s{_ositgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ositgUploadProtocol :: Lens' OrganizationsStoredInfoTypesGet (Maybe Text)
ositgUploadProtocol
  = lens _ositgUploadProtocol
      (\ s a -> s{_ositgUploadProtocol = a})

-- | OAuth access token.
ositgAccessToken :: Lens' OrganizationsStoredInfoTypesGet (Maybe Text)
ositgAccessToken
  = lens _ositgAccessToken
      (\ s a -> s{_ositgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ositgUploadType :: Lens' OrganizationsStoredInfoTypesGet (Maybe Text)
ositgUploadType
  = lens _ositgUploadType
      (\ s a -> s{_ositgUploadType = a})

-- | Resource name of the organization and storedInfoType to be read, for
-- example \`organizations\/433245324\/storedInfoTypes\/432452342\` or
-- projects\/project-id\/storedInfoTypes\/432452342.
ositgName :: Lens' OrganizationsStoredInfoTypesGet Text
ositgName
  = lens _ositgName (\ s a -> s{_ositgName = a})

-- | JSONP
ositgCallback :: Lens' OrganizationsStoredInfoTypesGet (Maybe Text)
ositgCallback
  = lens _ositgCallback
      (\ s a -> s{_ositgCallback = a})

instance GoogleRequest
           OrganizationsStoredInfoTypesGet
         where
        type Rs OrganizationsStoredInfoTypesGet =
             GooglePrivacyDlpV2StoredInfoType
        type Scopes OrganizationsStoredInfoTypesGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient OrganizationsStoredInfoTypesGet'{..}
          = go _ositgName _ositgXgafv _ositgUploadProtocol
              _ositgAccessToken
              _ositgUploadType
              _ositgCallback
              (Just AltJSON)
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrganizationsStoredInfoTypesGetResource)
                      mempty
