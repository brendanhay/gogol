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
-- Module      : Network.Google.Resource.DLP.Organizations.Locations.InspectTemplates.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists InspectTemplates. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates to learn more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.organizations.locations.inspectTemplates.list@.
module Network.Google.Resource.DLP.Organizations.Locations.InspectTemplates.List
    (
    -- * REST Resource
      OrganizationsLocationsInspectTemplatesListResource

    -- * Creating a Request
    , organizationsLocationsInspectTemplatesList
    , OrganizationsLocationsInspectTemplatesList

    -- * Request Lenses
    , olitlParent
    , olitlXgafv
    , olitlUploadProtocol
    , olitlOrderBy
    , olitlAccessToken
    , olitlUploadType
    , olitlPageToken
    , olitlLocationId
    , olitlPageSize
    , olitlCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.organizations.locations.inspectTemplates.list@ method which the
-- 'OrganizationsLocationsInspectTemplatesList' request conforms to.
type OrganizationsLocationsInspectTemplatesListResource
     =
     "v2" :>
       Capture "parent" Text :>
         "inspectTemplates" :>
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
                                 GooglePrivacyDlpV2ListInspectTemplatesResponse

-- | Lists InspectTemplates. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates to learn more.
--
-- /See:/ 'organizationsLocationsInspectTemplatesList' smart constructor.
data OrganizationsLocationsInspectTemplatesList =
  OrganizationsLocationsInspectTemplatesList'
    { _olitlParent :: !Text
    , _olitlXgafv :: !(Maybe Xgafv)
    , _olitlUploadProtocol :: !(Maybe Text)
    , _olitlOrderBy :: !(Maybe Text)
    , _olitlAccessToken :: !(Maybe Text)
    , _olitlUploadType :: !(Maybe Text)
    , _olitlPageToken :: !(Maybe Text)
    , _olitlLocationId :: !(Maybe Text)
    , _olitlPageSize :: !(Maybe (Textual Int32))
    , _olitlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsLocationsInspectTemplatesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olitlParent'
--
-- * 'olitlXgafv'
--
-- * 'olitlUploadProtocol'
--
-- * 'olitlOrderBy'
--
-- * 'olitlAccessToken'
--
-- * 'olitlUploadType'
--
-- * 'olitlPageToken'
--
-- * 'olitlLocationId'
--
-- * 'olitlPageSize'
--
-- * 'olitlCallback'
organizationsLocationsInspectTemplatesList
    :: Text -- ^ 'olitlParent'
    -> OrganizationsLocationsInspectTemplatesList
organizationsLocationsInspectTemplatesList pOlitlParent_ =
  OrganizationsLocationsInspectTemplatesList'
    { _olitlParent = pOlitlParent_
    , _olitlXgafv = Nothing
    , _olitlUploadProtocol = Nothing
    , _olitlOrderBy = Nothing
    , _olitlAccessToken = Nothing
    , _olitlUploadType = Nothing
    , _olitlPageToken = Nothing
    , _olitlLocationId = Nothing
    , _olitlPageSize = Nothing
    , _olitlCallback = Nothing
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
olitlParent :: Lens' OrganizationsLocationsInspectTemplatesList Text
olitlParent
  = lens _olitlParent (\ s a -> s{_olitlParent = a})

-- | V1 error format.
olitlXgafv :: Lens' OrganizationsLocationsInspectTemplatesList (Maybe Xgafv)
olitlXgafv
  = lens _olitlXgafv (\ s a -> s{_olitlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
olitlUploadProtocol :: Lens' OrganizationsLocationsInspectTemplatesList (Maybe Text)
olitlUploadProtocol
  = lens _olitlUploadProtocol
      (\ s a -> s{_olitlUploadProtocol = a})

-- | Comma separated list of fields to order by, followed by \`asc\` or
-- \`desc\` postfix. This list is case-insensitive, default sorting order
-- is ascending, redundant space characters are insignificant. Example:
-- \`name asc,update_time, create_time desc\` Supported fields are: -
-- \`create_time\`: corresponds to time the template was created. -
-- \`update_time\`: corresponds to time the template was last updated. -
-- \`name\`: corresponds to template\'s name. - \`display_name\`:
-- corresponds to template\'s display name.
olitlOrderBy :: Lens' OrganizationsLocationsInspectTemplatesList (Maybe Text)
olitlOrderBy
  = lens _olitlOrderBy (\ s a -> s{_olitlOrderBy = a})

-- | OAuth access token.
olitlAccessToken :: Lens' OrganizationsLocationsInspectTemplatesList (Maybe Text)
olitlAccessToken
  = lens _olitlAccessToken
      (\ s a -> s{_olitlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
olitlUploadType :: Lens' OrganizationsLocationsInspectTemplatesList (Maybe Text)
olitlUploadType
  = lens _olitlUploadType
      (\ s a -> s{_olitlUploadType = a})

-- | Page token to continue retrieval. Comes from previous call to
-- \`ListInspectTemplates\`.
olitlPageToken :: Lens' OrganizationsLocationsInspectTemplatesList (Maybe Text)
olitlPageToken
  = lens _olitlPageToken
      (\ s a -> s{_olitlPageToken = a})

-- | Deprecated. This field has no effect.
olitlLocationId :: Lens' OrganizationsLocationsInspectTemplatesList (Maybe Text)
olitlLocationId
  = lens _olitlLocationId
      (\ s a -> s{_olitlLocationId = a})

-- | Size of the page, can be limited by server. If zero server returns a
-- page of max size 100.
olitlPageSize :: Lens' OrganizationsLocationsInspectTemplatesList (Maybe Int32)
olitlPageSize
  = lens _olitlPageSize
      (\ s a -> s{_olitlPageSize = a})
      . mapping _Coerce

-- | JSONP
olitlCallback :: Lens' OrganizationsLocationsInspectTemplatesList (Maybe Text)
olitlCallback
  = lens _olitlCallback
      (\ s a -> s{_olitlCallback = a})

instance GoogleRequest
           OrganizationsLocationsInspectTemplatesList
         where
        type Rs OrganizationsLocationsInspectTemplatesList =
             GooglePrivacyDlpV2ListInspectTemplatesResponse
        type Scopes
               OrganizationsLocationsInspectTemplatesList
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          OrganizationsLocationsInspectTemplatesList'{..}
          = go _olitlParent _olitlXgafv _olitlUploadProtocol
              _olitlOrderBy
              _olitlAccessToken
              _olitlUploadType
              _olitlPageToken
              _olitlLocationId
              _olitlPageSize
              _olitlCallback
              (Just AltJSON)
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           OrganizationsLocationsInspectTemplatesListResource)
                      mempty
