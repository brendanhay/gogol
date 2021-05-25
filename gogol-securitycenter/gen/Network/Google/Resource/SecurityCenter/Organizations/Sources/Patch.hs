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
-- Module      : Network.Google.Resource.SecurityCenter.Organizations.Sources.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a source.
--
-- /See:/ <https://console.cloud.google.com/apis/api/securitycenter.googleapis.com/overview Security Command Center API Reference> for @securitycenter.organizations.sources.patch@.
module Network.Google.Resource.SecurityCenter.Organizations.Sources.Patch
    (
    -- * REST Resource
      OrganizationsSourcesPatchResource

    -- * Creating a Request
    , organizationsSourcesPatch
    , OrganizationsSourcesPatch

    -- * Request Lenses
    , ospXgafv
    , ospUploadProtocol
    , ospUpdateMask
    , ospAccessToken
    , ospUploadType
    , ospPayload
    , ospName
    , ospCallback
    ) where

import Network.Google.Prelude
import Network.Google.SecurityCenter.Types

-- | A resource alias for @securitycenter.organizations.sources.patch@ method which the
-- 'OrganizationsSourcesPatch' request conforms to.
type OrganizationsSourcesPatchResource =
     "v1p1beta1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Source :> Patch '[JSON] Source

-- | Updates a source.
--
-- /See:/ 'organizationsSourcesPatch' smart constructor.
data OrganizationsSourcesPatch =
  OrganizationsSourcesPatch'
    { _ospXgafv :: !(Maybe Xgafv)
    , _ospUploadProtocol :: !(Maybe Text)
    , _ospUpdateMask :: !(Maybe GFieldMask)
    , _ospAccessToken :: !(Maybe Text)
    , _ospUploadType :: !(Maybe Text)
    , _ospPayload :: !Source
    , _ospName :: !Text
    , _ospCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsSourcesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ospXgafv'
--
-- * 'ospUploadProtocol'
--
-- * 'ospUpdateMask'
--
-- * 'ospAccessToken'
--
-- * 'ospUploadType'
--
-- * 'ospPayload'
--
-- * 'ospName'
--
-- * 'ospCallback'
organizationsSourcesPatch
    :: Source -- ^ 'ospPayload'
    -> Text -- ^ 'ospName'
    -> OrganizationsSourcesPatch
organizationsSourcesPatch pOspPayload_ pOspName_ =
  OrganizationsSourcesPatch'
    { _ospXgafv = Nothing
    , _ospUploadProtocol = Nothing
    , _ospUpdateMask = Nothing
    , _ospAccessToken = Nothing
    , _ospUploadType = Nothing
    , _ospPayload = pOspPayload_
    , _ospName = pOspName_
    , _ospCallback = Nothing
    }


-- | V1 error format.
ospXgafv :: Lens' OrganizationsSourcesPatch (Maybe Xgafv)
ospXgafv = lens _ospXgafv (\ s a -> s{_ospXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ospUploadProtocol :: Lens' OrganizationsSourcesPatch (Maybe Text)
ospUploadProtocol
  = lens _ospUploadProtocol
      (\ s a -> s{_ospUploadProtocol = a})

-- | The FieldMask to use when updating the source resource. If empty all
-- mutable fields will be updated.
ospUpdateMask :: Lens' OrganizationsSourcesPatch (Maybe GFieldMask)
ospUpdateMask
  = lens _ospUpdateMask
      (\ s a -> s{_ospUpdateMask = a})

-- | OAuth access token.
ospAccessToken :: Lens' OrganizationsSourcesPatch (Maybe Text)
ospAccessToken
  = lens _ospAccessToken
      (\ s a -> s{_ospAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ospUploadType :: Lens' OrganizationsSourcesPatch (Maybe Text)
ospUploadType
  = lens _ospUploadType
      (\ s a -> s{_ospUploadType = a})

-- | Multipart request metadata.
ospPayload :: Lens' OrganizationsSourcesPatch Source
ospPayload
  = lens _ospPayload (\ s a -> s{_ospPayload = a})

-- | The relative resource name of this source. See:
-- https:\/\/cloud.google.com\/apis\/design\/resource_names#relative_resource_name
-- Example: \"organizations\/{organization_id}\/sources\/{source_id}\"
ospName :: Lens' OrganizationsSourcesPatch Text
ospName = lens _ospName (\ s a -> s{_ospName = a})

-- | JSONP
ospCallback :: Lens' OrganizationsSourcesPatch (Maybe Text)
ospCallback
  = lens _ospCallback (\ s a -> s{_ospCallback = a})

instance GoogleRequest OrganizationsSourcesPatch
         where
        type Rs OrganizationsSourcesPatch = Source
        type Scopes OrganizationsSourcesPatch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient OrganizationsSourcesPatch'{..}
          = go _ospName _ospXgafv _ospUploadProtocol
              _ospUpdateMask
              _ospAccessToken
              _ospUploadType
              _ospCallback
              (Just AltJSON)
              _ospPayload
              securityCenterService
          where go
                  = buildClient
                      (Proxy :: Proxy OrganizationsSourcesPatchResource)
                      mempty
