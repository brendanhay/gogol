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
-- Module      : Network.Google.Resource.Logging.Organizations.Exclusions.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an exclusion.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Stackdriver Logging API Reference> for @logging.organizations.exclusions.delete@.
module Network.Google.Resource.Logging.Organizations.Exclusions.Delete
    (
    -- * REST Resource
      OrganizationsExclusionsDeleteResource

    -- * Creating a Request
    , organizationsExclusionsDelete
    , OrganizationsExclusionsDelete

    -- * Request Lenses
    , oedXgafv
    , oedUploadProtocol
    , oedAccessToken
    , oedUploadType
    , oedName
    , oedCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @logging.organizations.exclusions.delete@ method which the
-- 'OrganizationsExclusionsDelete' request conforms to.
type OrganizationsExclusionsDeleteResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes an exclusion.
--
-- /See:/ 'organizationsExclusionsDelete' smart constructor.
data OrganizationsExclusionsDelete =
  OrganizationsExclusionsDelete'
    { _oedXgafv          :: !(Maybe Xgafv)
    , _oedUploadProtocol :: !(Maybe Text)
    , _oedAccessToken    :: !(Maybe Text)
    , _oedUploadType     :: !(Maybe Text)
    , _oedName           :: !Text
    , _oedCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrganizationsExclusionsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oedXgafv'
--
-- * 'oedUploadProtocol'
--
-- * 'oedAccessToken'
--
-- * 'oedUploadType'
--
-- * 'oedName'
--
-- * 'oedCallback'
organizationsExclusionsDelete
    :: Text -- ^ 'oedName'
    -> OrganizationsExclusionsDelete
organizationsExclusionsDelete pOedName_ =
  OrganizationsExclusionsDelete'
    { _oedXgafv = Nothing
    , _oedUploadProtocol = Nothing
    , _oedAccessToken = Nothing
    , _oedUploadType = Nothing
    , _oedName = pOedName_
    , _oedCallback = Nothing
    }

-- | V1 error format.
oedXgafv :: Lens' OrganizationsExclusionsDelete (Maybe Xgafv)
oedXgafv = lens _oedXgafv (\ s a -> s{_oedXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oedUploadProtocol :: Lens' OrganizationsExclusionsDelete (Maybe Text)
oedUploadProtocol
  = lens _oedUploadProtocol
      (\ s a -> s{_oedUploadProtocol = a})

-- | OAuth access token.
oedAccessToken :: Lens' OrganizationsExclusionsDelete (Maybe Text)
oedAccessToken
  = lens _oedAccessToken
      (\ s a -> s{_oedAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oedUploadType :: Lens' OrganizationsExclusionsDelete (Maybe Text)
oedUploadType
  = lens _oedUploadType
      (\ s a -> s{_oedUploadType = a})

-- | Required. The resource name of an existing exclusion to delete:
-- \"projects\/[PROJECT_ID]\/exclusions\/[EXCLUSION_ID]\"
-- \"organizations\/[ORGANIZATION_ID]\/exclusions\/[EXCLUSION_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\/exclusions\/[EXCLUSION_ID]\"
-- \"folders\/[FOLDER_ID]\/exclusions\/[EXCLUSION_ID]\" Example:
-- \"projects\/my-project-id\/exclusions\/my-exclusion-id\".
oedName :: Lens' OrganizationsExclusionsDelete Text
oedName = lens _oedName (\ s a -> s{_oedName = a})

-- | JSONP
oedCallback :: Lens' OrganizationsExclusionsDelete (Maybe Text)
oedCallback
  = lens _oedCallback (\ s a -> s{_oedCallback = a})

instance GoogleRequest OrganizationsExclusionsDelete
         where
        type Rs OrganizationsExclusionsDelete = Empty
        type Scopes OrganizationsExclusionsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient OrganizationsExclusionsDelete'{..}
          = go _oedName _oedXgafv _oedUploadProtocol
              _oedAccessToken
              _oedUploadType
              _oedCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrganizationsExclusionsDeleteResource)
                      mempty
