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
-- Module      : Network.Google.Resource.DLP.Organizations.StoredInfoTypes.List
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
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.organizations.storedInfoTypes.list@.
module Network.Google.Resource.DLP.Organizations.StoredInfoTypes.List
    (
    -- * REST Resource
      OrganizationsStoredInfoTypesListResource

    -- * Creating a Request
    , organizationsStoredInfoTypesList
    , OrganizationsStoredInfoTypesList

    -- * Request Lenses
    , ositlParent
    , ositlXgafv
    , ositlUploadProtocol
    , ositlOrderBy
    , ositlAccessToken
    , ositlUploadType
    , ositlPageToken
    , ositlLocationId
    , ositlPageSize
    , ositlCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.organizations.storedInfoTypes.list@ method which the
-- 'OrganizationsStoredInfoTypesList' request conforms to.
type OrganizationsStoredInfoTypesListResource =
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
-- /See:/ 'organizationsStoredInfoTypesList' smart constructor.
data OrganizationsStoredInfoTypesList =
  OrganizationsStoredInfoTypesList'
    { _ositlParent :: !Text
    , _ositlXgafv :: !(Maybe Xgafv)
    , _ositlUploadProtocol :: !(Maybe Text)
    , _ositlOrderBy :: !(Maybe Text)
    , _ositlAccessToken :: !(Maybe Text)
    , _ositlUploadType :: !(Maybe Text)
    , _ositlPageToken :: !(Maybe Text)
    , _ositlLocationId :: !(Maybe Text)
    , _ositlPageSize :: !(Maybe (Textual Int32))
    , _ositlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsStoredInfoTypesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ositlParent'
--
-- * 'ositlXgafv'
--
-- * 'ositlUploadProtocol'
--
-- * 'ositlOrderBy'
--
-- * 'ositlAccessToken'
--
-- * 'ositlUploadType'
--
-- * 'ositlPageToken'
--
-- * 'ositlLocationId'
--
-- * 'ositlPageSize'
--
-- * 'ositlCallback'
organizationsStoredInfoTypesList
    :: Text -- ^ 'ositlParent'
    -> OrganizationsStoredInfoTypesList
organizationsStoredInfoTypesList pOsitlParent_ =
  OrganizationsStoredInfoTypesList'
    { _ositlParent = pOsitlParent_
    , _ositlXgafv = Nothing
    , _ositlUploadProtocol = Nothing
    , _ositlOrderBy = Nothing
    , _ositlAccessToken = Nothing
    , _ositlUploadType = Nothing
    , _ositlPageToken = Nothing
    , _ositlLocationId = Nothing
    , _ositlPageSize = Nothing
    , _ositlCallback = Nothing
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
ositlParent :: Lens' OrganizationsStoredInfoTypesList Text
ositlParent
  = lens _ositlParent (\ s a -> s{_ositlParent = a})

-- | V1 error format.
ositlXgafv :: Lens' OrganizationsStoredInfoTypesList (Maybe Xgafv)
ositlXgafv
  = lens _ositlXgafv (\ s a -> s{_ositlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ositlUploadProtocol :: Lens' OrganizationsStoredInfoTypesList (Maybe Text)
ositlUploadProtocol
  = lens _ositlUploadProtocol
      (\ s a -> s{_ositlUploadProtocol = a})

-- | Comma separated list of fields to order by, followed by \`asc\` or
-- \`desc\` postfix. This list is case-insensitive, default sorting order
-- is ascending, redundant space characters are insignificant. Example:
-- \`name asc, display_name, create_time desc\` Supported fields are: -
-- \`create_time\`: corresponds to time the most recent version of the
-- resource was created. - \`state\`: corresponds to the state of the
-- resource. - \`name\`: corresponds to resource name. - \`display_name\`:
-- corresponds to info type\'s display name.
ositlOrderBy :: Lens' OrganizationsStoredInfoTypesList (Maybe Text)
ositlOrderBy
  = lens _ositlOrderBy (\ s a -> s{_ositlOrderBy = a})

-- | OAuth access token.
ositlAccessToken :: Lens' OrganizationsStoredInfoTypesList (Maybe Text)
ositlAccessToken
  = lens _ositlAccessToken
      (\ s a -> s{_ositlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ositlUploadType :: Lens' OrganizationsStoredInfoTypesList (Maybe Text)
ositlUploadType
  = lens _ositlUploadType
      (\ s a -> s{_ositlUploadType = a})

-- | Page token to continue retrieval. Comes from previous call to
-- \`ListStoredInfoTypes\`.
ositlPageToken :: Lens' OrganizationsStoredInfoTypesList (Maybe Text)
ositlPageToken
  = lens _ositlPageToken
      (\ s a -> s{_ositlPageToken = a})

-- | Deprecated. This field has no effect.
ositlLocationId :: Lens' OrganizationsStoredInfoTypesList (Maybe Text)
ositlLocationId
  = lens _ositlLocationId
      (\ s a -> s{_ositlLocationId = a})

-- | Size of the page, can be limited by server. If zero server returns a
-- page of max size 100.
ositlPageSize :: Lens' OrganizationsStoredInfoTypesList (Maybe Int32)
ositlPageSize
  = lens _ositlPageSize
      (\ s a -> s{_ositlPageSize = a})
      . mapping _Coerce

-- | JSONP
ositlCallback :: Lens' OrganizationsStoredInfoTypesList (Maybe Text)
ositlCallback
  = lens _ositlCallback
      (\ s a -> s{_ositlCallback = a})

instance GoogleRequest
           OrganizationsStoredInfoTypesList
         where
        type Rs OrganizationsStoredInfoTypesList =
             GooglePrivacyDlpV2ListStoredInfoTypesResponse
        type Scopes OrganizationsStoredInfoTypesList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient OrganizationsStoredInfoTypesList'{..}
          = go _ositlParent _ositlXgafv _ositlUploadProtocol
              _ositlOrderBy
              _ositlAccessToken
              _ositlUploadType
              _ositlPageToken
              _ositlLocationId
              _ositlPageSize
              _ositlCallback
              (Just AltJSON)
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrganizationsStoredInfoTypesListResource)
                      mempty
