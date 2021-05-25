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
-- Module      : Network.Google.Resource.SecurityCenter.Organizations.Sources.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a source.
--
-- /See:/ <https://console.cloud.google.com/apis/api/securitycenter.googleapis.com/overview Security Command Center API Reference> for @securitycenter.organizations.sources.create@.
module Network.Google.Resource.SecurityCenter.Organizations.Sources.Create
    (
    -- * REST Resource
      OrganizationsSourcesCreateResource

    -- * Creating a Request
    , organizationsSourcesCreate
    , OrganizationsSourcesCreate

    -- * Request Lenses
    , oscParent
    , oscXgafv
    , oscUploadProtocol
    , oscAccessToken
    , oscUploadType
    , oscPayload
    , oscCallback
    ) where

import Network.Google.Prelude
import Network.Google.SecurityCenter.Types

-- | A resource alias for @securitycenter.organizations.sources.create@ method which the
-- 'OrganizationsSourcesCreate' request conforms to.
type OrganizationsSourcesCreateResource =
     "v1p1beta1" :>
       Capture "parent" Text :>
         "sources" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Source :> Post '[JSON] Source

-- | Creates a source.
--
-- /See:/ 'organizationsSourcesCreate' smart constructor.
data OrganizationsSourcesCreate =
  OrganizationsSourcesCreate'
    { _oscParent :: !Text
    , _oscXgafv :: !(Maybe Xgafv)
    , _oscUploadProtocol :: !(Maybe Text)
    , _oscAccessToken :: !(Maybe Text)
    , _oscUploadType :: !(Maybe Text)
    , _oscPayload :: !Source
    , _oscCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsSourcesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oscParent'
--
-- * 'oscXgafv'
--
-- * 'oscUploadProtocol'
--
-- * 'oscAccessToken'
--
-- * 'oscUploadType'
--
-- * 'oscPayload'
--
-- * 'oscCallback'
organizationsSourcesCreate
    :: Text -- ^ 'oscParent'
    -> Source -- ^ 'oscPayload'
    -> OrganizationsSourcesCreate
organizationsSourcesCreate pOscParent_ pOscPayload_ =
  OrganizationsSourcesCreate'
    { _oscParent = pOscParent_
    , _oscXgafv = Nothing
    , _oscUploadProtocol = Nothing
    , _oscAccessToken = Nothing
    , _oscUploadType = Nothing
    , _oscPayload = pOscPayload_
    , _oscCallback = Nothing
    }


-- | Required. Resource name of the new source\'s parent. Its format should
-- be \"organizations\/[organization_id]\".
oscParent :: Lens' OrganizationsSourcesCreate Text
oscParent
  = lens _oscParent (\ s a -> s{_oscParent = a})

-- | V1 error format.
oscXgafv :: Lens' OrganizationsSourcesCreate (Maybe Xgafv)
oscXgafv = lens _oscXgafv (\ s a -> s{_oscXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oscUploadProtocol :: Lens' OrganizationsSourcesCreate (Maybe Text)
oscUploadProtocol
  = lens _oscUploadProtocol
      (\ s a -> s{_oscUploadProtocol = a})

-- | OAuth access token.
oscAccessToken :: Lens' OrganizationsSourcesCreate (Maybe Text)
oscAccessToken
  = lens _oscAccessToken
      (\ s a -> s{_oscAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oscUploadType :: Lens' OrganizationsSourcesCreate (Maybe Text)
oscUploadType
  = lens _oscUploadType
      (\ s a -> s{_oscUploadType = a})

-- | Multipart request metadata.
oscPayload :: Lens' OrganizationsSourcesCreate Source
oscPayload
  = lens _oscPayload (\ s a -> s{_oscPayload = a})

-- | JSONP
oscCallback :: Lens' OrganizationsSourcesCreate (Maybe Text)
oscCallback
  = lens _oscCallback (\ s a -> s{_oscCallback = a})

instance GoogleRequest OrganizationsSourcesCreate
         where
        type Rs OrganizationsSourcesCreate = Source
        type Scopes OrganizationsSourcesCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient OrganizationsSourcesCreate'{..}
          = go _oscParent _oscXgafv _oscUploadProtocol
              _oscAccessToken
              _oscUploadType
              _oscCallback
              (Just AltJSON)
              _oscPayload
              securityCenterService
          where go
                  = buildClient
                      (Proxy :: Proxy OrganizationsSourcesCreateResource)
                      mempty
