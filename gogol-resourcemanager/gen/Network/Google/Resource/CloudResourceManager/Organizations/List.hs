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
-- Module      : Network.Google.Resource.CloudResourceManager.Organizations.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Query Organization resources.
--
-- /See:/ <https://cloud.google.com/resource-manager Google Cloud Resource Manager API Reference> for @cloudresourcemanager.organizations.list@.
module Network.Google.Resource.CloudResourceManager.Organizations.List
    (
    -- * REST Resource
      OrganizationsListResource

    -- * Creating a Request
    , organizationsList
    , OrganizationsList

    -- * Request Lenses
    , olXgafv
    , olUploadProtocol
    , olPp
    , olAccessToken
    , olUploadType
    , olBearerToken
    , olFilter
    , olPageToken
    , olPageSize
    , olCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.organizations.list@ method which the
-- 'OrganizationsList' request conforms to.
type OrganizationsListResource =
     "v1beta1" :>
       "organizations" :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "pageSize" (JSONText Int32) :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ListOrganizationsResponse

-- | Query Organization resources.
--
-- /See:/ 'organizationsList' smart constructor.
data OrganizationsList = OrganizationsList
    { _olXgafv          :: !(Maybe Text)
    , _olUploadProtocol :: !(Maybe Text)
    , _olPp             :: !Bool
    , _olAccessToken    :: !(Maybe Text)
    , _olUploadType     :: !(Maybe Text)
    , _olBearerToken    :: !(Maybe Text)
    , _olFilter         :: !(Maybe Text)
    , _olPageToken      :: !(Maybe Text)
    , _olPageSize       :: !(Maybe (JSONText Int32))
    , _olCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrganizationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olXgafv'
--
-- * 'olUploadProtocol'
--
-- * 'olPp'
--
-- * 'olAccessToken'
--
-- * 'olUploadType'
--
-- * 'olBearerToken'
--
-- * 'olFilter'
--
-- * 'olPageToken'
--
-- * 'olPageSize'
--
-- * 'olCallback'
organizationsList
    :: OrganizationsList
organizationsList =
    OrganizationsList
    { _olXgafv = Nothing
    , _olUploadProtocol = Nothing
    , _olPp = True
    , _olAccessToken = Nothing
    , _olUploadType = Nothing
    , _olBearerToken = Nothing
    , _olFilter = Nothing
    , _olPageToken = Nothing
    , _olPageSize = Nothing
    , _olCallback = Nothing
    }

-- | V1 error format.
olXgafv :: Lens' OrganizationsList (Maybe Text)
olXgafv = lens _olXgafv (\ s a -> s{_olXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
olUploadProtocol :: Lens' OrganizationsList (Maybe Text)
olUploadProtocol
  = lens _olUploadProtocol
      (\ s a -> s{_olUploadProtocol = a})

-- | Pretty-print response.
olPp :: Lens' OrganizationsList Bool
olPp = lens _olPp (\ s a -> s{_olPp = a})

-- | OAuth access token.
olAccessToken :: Lens' OrganizationsList (Maybe Text)
olAccessToken
  = lens _olAccessToken
      (\ s a -> s{_olAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
olUploadType :: Lens' OrganizationsList (Maybe Text)
olUploadType
  = lens _olUploadType (\ s a -> s{_olUploadType = a})

-- | OAuth bearer token.
olBearerToken :: Lens' OrganizationsList (Maybe Text)
olBearerToken
  = lens _olBearerToken
      (\ s a -> s{_olBearerToken = a})

-- | An optional query string used to filter the Organizations to be return
-- in the response. Filter rules are case-insensitive. Organizations may be
-- filtered by \`owner.directoryCustomerId\` or by \`domain\`, where the
-- domain is a Google for Work domain, for example: |Filter|Description|
-- |------|-----------| |owner.directorycustomerid:123456789|Organizations
-- with \`owner.directory_customer_id\` equal to \`123456789\`.|
-- |domain:google.com|Organizations corresponding to the domain
-- \`google.com\`.| This field is optional.
olFilter :: Lens' OrganizationsList (Maybe Text)
olFilter = lens _olFilter (\ s a -> s{_olFilter = a})

-- | A pagination token returned from a previous call to ListOrganizations
-- that indicates from where listing should continue. This field is
-- optional.
olPageToken :: Lens' OrganizationsList (Maybe Text)
olPageToken
  = lens _olPageToken (\ s a -> s{_olPageToken = a})

-- | The maximum number of Organizations to return in the response. This
-- field is optional.
olPageSize :: Lens' OrganizationsList (Maybe Int32)
olPageSize
  = lens _olPageSize (\ s a -> s{_olPageSize = a}) .
      mapping _Coerce

-- | JSONP
olCallback :: Lens' OrganizationsList (Maybe Text)
olCallback
  = lens _olCallback (\ s a -> s{_olCallback = a})

instance GoogleRequest OrganizationsList where
        type Rs OrganizationsList = ListOrganizationsResponse
        requestClient OrganizationsList{..}
          = go _olXgafv _olUploadProtocol (Just _olPp)
              _olAccessToken
              _olUploadType
              _olBearerToken
              _olFilter
              _olPageToken
              _olPageSize
              _olCallback
              (Just AltJSON)
              resourceManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy OrganizationsListResource)
                      mempty
