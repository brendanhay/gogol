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
-- Module      : Network.Google.Resource.SecurityCenter.Organizations.Sources.Findings.Group
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Filters an organization or source\'s findings and groups them by their
-- specified properties. To group across all sources provide a \`-\` as the
-- source id. Example:
-- \/v1p1beta1\/organizations\/{organization_id}\/sources\/-\/findings
--
-- /See:/ <https://console.cloud.google.com/apis/api/securitycenter.googleapis.com/overview Security Command Center API Reference> for @securitycenter.organizations.sources.findings.group@.
module Network.Google.Resource.SecurityCenter.Organizations.Sources.Findings.Group
    (
    -- * REST Resource
      OrganizationsSourcesFindingsGroupResource

    -- * Creating a Request
    , organizationsSourcesFindingsGroup
    , OrganizationsSourcesFindingsGroup

    -- * Request Lenses
    , osfgParent
    , osfgXgafv
    , osfgUploadProtocol
    , osfgAccessToken
    , osfgUploadType
    , osfgPayload
    , osfgCallback
    ) where

import Network.Google.Prelude
import Network.Google.SecurityCenter.Types

-- | A resource alias for @securitycenter.organizations.sources.findings.group@ method which the
-- 'OrganizationsSourcesFindingsGroup' request conforms to.
type OrganizationsSourcesFindingsGroupResource =
     "v1p1beta1" :>
       Capture "parent" Text :>
         "findings:group" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] GroupFindingsRequest :>
                         Post '[JSON] GroupFindingsResponse

-- | Filters an organization or source\'s findings and groups them by their
-- specified properties. To group across all sources provide a \`-\` as the
-- source id. Example:
-- \/v1p1beta1\/organizations\/{organization_id}\/sources\/-\/findings
--
-- /See:/ 'organizationsSourcesFindingsGroup' smart constructor.
data OrganizationsSourcesFindingsGroup =
  OrganizationsSourcesFindingsGroup'
    { _osfgParent :: !Text
    , _osfgXgafv :: !(Maybe Xgafv)
    , _osfgUploadProtocol :: !(Maybe Text)
    , _osfgAccessToken :: !(Maybe Text)
    , _osfgUploadType :: !(Maybe Text)
    , _osfgPayload :: !GroupFindingsRequest
    , _osfgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsSourcesFindingsGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'osfgParent'
--
-- * 'osfgXgafv'
--
-- * 'osfgUploadProtocol'
--
-- * 'osfgAccessToken'
--
-- * 'osfgUploadType'
--
-- * 'osfgPayload'
--
-- * 'osfgCallback'
organizationsSourcesFindingsGroup
    :: Text -- ^ 'osfgParent'
    -> GroupFindingsRequest -- ^ 'osfgPayload'
    -> OrganizationsSourcesFindingsGroup
organizationsSourcesFindingsGroup pOsfgParent_ pOsfgPayload_ =
  OrganizationsSourcesFindingsGroup'
    { _osfgParent = pOsfgParent_
    , _osfgXgafv = Nothing
    , _osfgUploadProtocol = Nothing
    , _osfgAccessToken = Nothing
    , _osfgUploadType = Nothing
    , _osfgPayload = pOsfgPayload_
    , _osfgCallback = Nothing
    }


-- | Required. Name of the source to groupBy. Its format is
-- \"organizations\/[organization_id]\/sources\/[source_id]\". To groupBy
-- across all sources provide a source_id of \`-\`. For example:
-- organizations\/{organization_id}\/sources\/-
osfgParent :: Lens' OrganizationsSourcesFindingsGroup Text
osfgParent
  = lens _osfgParent (\ s a -> s{_osfgParent = a})

-- | V1 error format.
osfgXgafv :: Lens' OrganizationsSourcesFindingsGroup (Maybe Xgafv)
osfgXgafv
  = lens _osfgXgafv (\ s a -> s{_osfgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
osfgUploadProtocol :: Lens' OrganizationsSourcesFindingsGroup (Maybe Text)
osfgUploadProtocol
  = lens _osfgUploadProtocol
      (\ s a -> s{_osfgUploadProtocol = a})

-- | OAuth access token.
osfgAccessToken :: Lens' OrganizationsSourcesFindingsGroup (Maybe Text)
osfgAccessToken
  = lens _osfgAccessToken
      (\ s a -> s{_osfgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
osfgUploadType :: Lens' OrganizationsSourcesFindingsGroup (Maybe Text)
osfgUploadType
  = lens _osfgUploadType
      (\ s a -> s{_osfgUploadType = a})

-- | Multipart request metadata.
osfgPayload :: Lens' OrganizationsSourcesFindingsGroup GroupFindingsRequest
osfgPayload
  = lens _osfgPayload (\ s a -> s{_osfgPayload = a})

-- | JSONP
osfgCallback :: Lens' OrganizationsSourcesFindingsGroup (Maybe Text)
osfgCallback
  = lens _osfgCallback (\ s a -> s{_osfgCallback = a})

instance GoogleRequest
           OrganizationsSourcesFindingsGroup
         where
        type Rs OrganizationsSourcesFindingsGroup =
             GroupFindingsResponse
        type Scopes OrganizationsSourcesFindingsGroup =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient OrganizationsSourcesFindingsGroup'{..}
          = go _osfgParent _osfgXgafv _osfgUploadProtocol
              _osfgAccessToken
              _osfgUploadType
              _osfgCallback
              (Just AltJSON)
              _osfgPayload
              securityCenterService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrganizationsSourcesFindingsGroupResource)
                      mempty
