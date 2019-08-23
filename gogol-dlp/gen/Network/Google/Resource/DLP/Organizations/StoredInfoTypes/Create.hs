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
-- Module      : Network.Google.Resource.DLP.Organizations.StoredInfoTypes.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a pre-built stored infoType to be used for inspection. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-stored-infotypes to
-- learn more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.organizations.storedInfoTypes.create@.
module Network.Google.Resource.DLP.Organizations.StoredInfoTypes.Create
    (
    -- * REST Resource
      OrganizationsStoredInfoTypesCreateResource

    -- * Creating a Request
    , organizationsStoredInfoTypesCreate
    , OrganizationsStoredInfoTypesCreate

    -- * Request Lenses
    , ositcParent
    , ositcXgafv
    , ositcUploadProtocol
    , ositcAccessToken
    , ositcUploadType
    , ositcPayload
    , ositcCallback
    ) where

import           Network.Google.DLP.Types
import           Network.Google.Prelude

-- | A resource alias for @dlp.organizations.storedInfoTypes.create@ method which the
-- 'OrganizationsStoredInfoTypesCreate' request conforms to.
type OrganizationsStoredInfoTypesCreateResource =
     "v2" :>
       Capture "parent" Text :>
         "storedInfoTypes" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON]
                         GooglePrivacyDlpV2CreateStoredInfoTypeRequest
                         :> Post '[JSON] GooglePrivacyDlpV2StoredInfoType

-- | Creates a pre-built stored infoType to be used for inspection. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-stored-infotypes to
-- learn more.
--
-- /See:/ 'organizationsStoredInfoTypesCreate' smart constructor.
data OrganizationsStoredInfoTypesCreate =
  OrganizationsStoredInfoTypesCreate'
    { _ositcParent         :: !Text
    , _ositcXgafv          :: !(Maybe Xgafv)
    , _ositcUploadProtocol :: !(Maybe Text)
    , _ositcAccessToken    :: !(Maybe Text)
    , _ositcUploadType     :: !(Maybe Text)
    , _ositcPayload        :: !GooglePrivacyDlpV2CreateStoredInfoTypeRequest
    , _ositcCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsStoredInfoTypesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ositcParent'
--
-- * 'ositcXgafv'
--
-- * 'ositcUploadProtocol'
--
-- * 'ositcAccessToken'
--
-- * 'ositcUploadType'
--
-- * 'ositcPayload'
--
-- * 'ositcCallback'
organizationsStoredInfoTypesCreate
    :: Text -- ^ 'ositcParent'
    -> GooglePrivacyDlpV2CreateStoredInfoTypeRequest -- ^ 'ositcPayload'
    -> OrganizationsStoredInfoTypesCreate
organizationsStoredInfoTypesCreate pOsitcParent_ pOsitcPayload_ =
  OrganizationsStoredInfoTypesCreate'
    { _ositcParent = pOsitcParent_
    , _ositcXgafv = Nothing
    , _ositcUploadProtocol = Nothing
    , _ositcAccessToken = Nothing
    , _ositcUploadType = Nothing
    , _ositcPayload = pOsitcPayload_
    , _ositcCallback = Nothing
    }


-- | The parent resource name, for example projects\/my-project-id or
-- organizations\/my-org-id.
ositcParent :: Lens' OrganizationsStoredInfoTypesCreate Text
ositcParent
  = lens _ositcParent (\ s a -> s{_ositcParent = a})

-- | V1 error format.
ositcXgafv :: Lens' OrganizationsStoredInfoTypesCreate (Maybe Xgafv)
ositcXgafv
  = lens _ositcXgafv (\ s a -> s{_ositcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ositcUploadProtocol :: Lens' OrganizationsStoredInfoTypesCreate (Maybe Text)
ositcUploadProtocol
  = lens _ositcUploadProtocol
      (\ s a -> s{_ositcUploadProtocol = a})

-- | OAuth access token.
ositcAccessToken :: Lens' OrganizationsStoredInfoTypesCreate (Maybe Text)
ositcAccessToken
  = lens _ositcAccessToken
      (\ s a -> s{_ositcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ositcUploadType :: Lens' OrganizationsStoredInfoTypesCreate (Maybe Text)
ositcUploadType
  = lens _ositcUploadType
      (\ s a -> s{_ositcUploadType = a})

-- | Multipart request metadata.
ositcPayload :: Lens' OrganizationsStoredInfoTypesCreate GooglePrivacyDlpV2CreateStoredInfoTypeRequest
ositcPayload
  = lens _ositcPayload (\ s a -> s{_ositcPayload = a})

-- | JSONP
ositcCallback :: Lens' OrganizationsStoredInfoTypesCreate (Maybe Text)
ositcCallback
  = lens _ositcCallback
      (\ s a -> s{_ositcCallback = a})

instance GoogleRequest
           OrganizationsStoredInfoTypesCreate
         where
        type Rs OrganizationsStoredInfoTypesCreate =
             GooglePrivacyDlpV2StoredInfoType
        type Scopes OrganizationsStoredInfoTypesCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient OrganizationsStoredInfoTypesCreate'{..}
          = go _ositcParent _ositcXgafv _ositcUploadProtocol
              _ositcAccessToken
              _ositcUploadType
              _ositcCallback
              (Just AltJSON)
              _ositcPayload
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrganizationsStoredInfoTypesCreateResource)
                      mempty
