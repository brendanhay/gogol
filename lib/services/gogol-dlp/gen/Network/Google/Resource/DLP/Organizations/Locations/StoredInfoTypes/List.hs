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
-- Module      : Network.Google.Resource.DLP.Organizations.Locations.StoredInfoTypes.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists stored infoTypes. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-stored-infotypes to
-- learn more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.organizations.locations.storedInfoTypes.list@.
module Network.Google.Resource.DLP.Organizations.Locations.StoredInfoTypes.List
    (
    -- * REST Resource
      OrganizationsLocationsStoredInfoTypesListResource

    -- * Creating a Request
    , organizationsLocationsStoredInfoTypesList
    , OrganizationsLocationsStoredInfoTypesList

    -- * Request Lenses
    , olsitlParent
    , olsitlXgafv
    , olsitlUploadProtocol
    , olsitlOrderBy
    , olsitlAccessToken
    , olsitlUploadType
    , olsitlPageToken
    , olsitlLocationId
    , olsitlPageSize
    , olsitlCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.organizations.locations.storedInfoTypes.list@ method which the
-- 'OrganizationsLocationsStoredInfoTypesList' request conforms to.
type OrganizationsLocationsStoredInfoTypesListResource
     =
     "v2" :>
       Capture "parent" Text :>
         "storedInfoTypes" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "orderBy" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "locationId" Text :>
                         QueryParam "pageSize" (Textual Int32) :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON]
                                 GooglePrivacyDlpV2ListStoredInfoTypesResponse

-- | Lists stored infoTypes. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-stored-infotypes to
-- learn more.
--
-- /See:/ 'organizationsLocationsStoredInfoTypesList' smart constructor.
data OrganizationsLocationsStoredInfoTypesList =
  OrganizationsLocationsStoredInfoTypesList'
    { _olsitlParent :: !Text
    , _olsitlXgafv :: !(Maybe Xgafv)
    , _olsitlUploadProtocol :: !(Maybe Text)
    , _olsitlOrderBy :: !(Maybe Text)
    , _olsitlAccessToken :: !(Maybe Text)
    , _olsitlUploadType :: !(Maybe Text)
    , _olsitlPageToken :: !(Maybe Text)
    , _olsitlLocationId :: !(Maybe Text)
    , _olsitlPageSize :: !(Maybe (Textual Int32))
    , _olsitlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsLocationsStoredInfoTypesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olsitlParent'
--
-- * 'olsitlXgafv'
--
-- * 'olsitlUploadProtocol'
--
-- * 'olsitlOrderBy'
--
-- * 'olsitlAccessToken'
--
-- * 'olsitlUploadType'
--
-- * 'olsitlPageToken'
--
-- * 'olsitlLocationId'
--
-- * 'olsitlPageSize'
--
-- * 'olsitlCallback'
organizationsLocationsStoredInfoTypesList
    :: Text -- ^ 'olsitlParent'
    -> OrganizationsLocationsStoredInfoTypesList
organizationsLocationsStoredInfoTypesList pOlsitlParent_ =
  OrganizationsLocationsStoredInfoTypesList'
    { _olsitlParent = pOlsitlParent_
    , _olsitlXgafv = Nothing
    , _olsitlUploadProtocol = Nothing
    , _olsitlOrderBy = Nothing
    , _olsitlAccessToken = Nothing
    , _olsitlUploadType = Nothing
    , _olsitlPageToken = Nothing
    , _olsitlLocationId = Nothing
    , _olsitlPageSize = Nothing
    , _olsitlCallback = Nothing
    }


-- | Required. Parent resource name. The format of this value varies
-- depending on the scope of the request (project or organization) and
-- whether you have [specified a processing
-- location](https:\/\/cloud.google.com\/dlp\/docs\/specifying-location): +
-- Projects scope, location specified:
-- \`projects\/\`PROJECT_ID\`\/locations\/\`LOCATION_ID + Projects scope,
-- no location specified (defaults to global): \`projects\/\`PROJECT_ID +
-- Organizations scope, location specified:
-- \`organizations\/\`ORG_ID\`\/locations\/\`LOCATION_ID + Organizations
-- scope, no location specified (defaults to global):
-- \`organizations\/\`ORG_ID The following example \`parent\` string
-- specifies a parent project with the identifier \`example-project\`, and
-- specifies the \`europe-west3\` location for processing data:
-- parent=projects\/example-project\/locations\/europe-west3
olsitlParent :: Lens' OrganizationsLocationsStoredInfoTypesList Text
olsitlParent
  = lens _olsitlParent (\ s a -> s{_olsitlParent = a})

-- | V1 error format.
olsitlXgafv :: Lens' OrganizationsLocationsStoredInfoTypesList (Maybe Xgafv)
olsitlXgafv
  = lens _olsitlXgafv (\ s a -> s{_olsitlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
olsitlUploadProtocol :: Lens' OrganizationsLocationsStoredInfoTypesList (Maybe Text)
olsitlUploadProtocol
  = lens _olsitlUploadProtocol
      (\ s a -> s{_olsitlUploadProtocol = a})

-- | Comma separated list of fields to order by, followed by \`asc\` or
-- \`desc\` postfix. This list is case-insensitive, default sorting order
-- is ascending, redundant space characters are insignificant. Example:
-- \`name asc, display_name, create_time desc\` Supported fields are: -
-- \`create_time\`: corresponds to time the most recent version of the
-- resource was created. - \`state\`: corresponds to the state of the
-- resource. - \`name\`: corresponds to resource name. - \`display_name\`:
-- corresponds to info type\'s display name.
olsitlOrderBy :: Lens' OrganizationsLocationsStoredInfoTypesList (Maybe Text)
olsitlOrderBy
  = lens _olsitlOrderBy
      (\ s a -> s{_olsitlOrderBy = a})

-- | OAuth access token.
olsitlAccessToken :: Lens' OrganizationsLocationsStoredInfoTypesList (Maybe Text)
olsitlAccessToken
  = lens _olsitlAccessToken
      (\ s a -> s{_olsitlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
olsitlUploadType :: Lens' OrganizationsLocationsStoredInfoTypesList (Maybe Text)
olsitlUploadType
  = lens _olsitlUploadType
      (\ s a -> s{_olsitlUploadType = a})

-- | Page token to continue retrieval. Comes from previous call to
-- \`ListStoredInfoTypes\`.
olsitlPageToken :: Lens' OrganizationsLocationsStoredInfoTypesList (Maybe Text)
olsitlPageToken
  = lens _olsitlPageToken
      (\ s a -> s{_olsitlPageToken = a})

-- | Deprecated. This field has no effect.
olsitlLocationId :: Lens' OrganizationsLocationsStoredInfoTypesList (Maybe Text)
olsitlLocationId
  = lens _olsitlLocationId
      (\ s a -> s{_olsitlLocationId = a})

-- | Size of the page, can be limited by server. If zero server returns a
-- page of max size 100.
olsitlPageSize :: Lens' OrganizationsLocationsStoredInfoTypesList (Maybe Int32)
olsitlPageSize
  = lens _olsitlPageSize
      (\ s a -> s{_olsitlPageSize = a})
      . mapping _Coerce

-- | JSONP
olsitlCallback :: Lens' OrganizationsLocationsStoredInfoTypesList (Maybe Text)
olsitlCallback
  = lens _olsitlCallback
      (\ s a -> s{_olsitlCallback = a})

instance GoogleRequest
           OrganizationsLocationsStoredInfoTypesList
         where
        type Rs OrganizationsLocationsStoredInfoTypesList =
             GooglePrivacyDlpV2ListStoredInfoTypesResponse
        type Scopes OrganizationsLocationsStoredInfoTypesList
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          OrganizationsLocationsStoredInfoTypesList'{..}
          = go _olsitlParent _olsitlXgafv _olsitlUploadProtocol
              _olsitlOrderBy
              _olsitlAccessToken
              _olsitlUploadType
              _olsitlPageToken
              _olsitlLocationId
              _olsitlPageSize
              _olsitlCallback
              (Just AltJSON)
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           OrganizationsLocationsStoredInfoTypesListResource)
                      mempty
