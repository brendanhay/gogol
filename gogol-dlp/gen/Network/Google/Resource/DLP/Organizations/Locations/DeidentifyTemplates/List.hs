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
-- Module      : Network.Google.Resource.DLP.Organizations.Locations.DeidentifyTemplates.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists DeidentifyTemplates. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates-deid to learn
-- more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.organizations.locations.deidentifyTemplates.list@.
module Network.Google.Resource.DLP.Organizations.Locations.DeidentifyTemplates.List
    (
    -- * REST Resource
      OrganizationsLocationsDeidentifyTemplatesListResource

    -- * Creating a Request
    , organizationsLocationsDeidentifyTemplatesList
    , OrganizationsLocationsDeidentifyTemplatesList

    -- * Request Lenses
    , oldtlParent
    , oldtlXgafv
    , oldtlUploadProtocol
    , oldtlOrderBy
    , oldtlAccessToken
    , oldtlUploadType
    , oldtlPageToken
    , oldtlLocationId
    , oldtlPageSize
    , oldtlCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.organizations.locations.deidentifyTemplates.list@ method which the
-- 'OrganizationsLocationsDeidentifyTemplatesList' request conforms to.
type OrganizationsLocationsDeidentifyTemplatesListResource
     =
     "v2" :>
       Capture "parent" Text :>
         "deidentifyTemplates" :>
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
                                 GooglePrivacyDlpV2ListDeidentifyTemplatesResponse

-- | Lists DeidentifyTemplates. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates-deid to learn
-- more.
--
-- /See:/ 'organizationsLocationsDeidentifyTemplatesList' smart constructor.
data OrganizationsLocationsDeidentifyTemplatesList =
  OrganizationsLocationsDeidentifyTemplatesList'
    { _oldtlParent :: !Text
    , _oldtlXgafv :: !(Maybe Xgafv)
    , _oldtlUploadProtocol :: !(Maybe Text)
    , _oldtlOrderBy :: !(Maybe Text)
    , _oldtlAccessToken :: !(Maybe Text)
    , _oldtlUploadType :: !(Maybe Text)
    , _oldtlPageToken :: !(Maybe Text)
    , _oldtlLocationId :: !(Maybe Text)
    , _oldtlPageSize :: !(Maybe (Textual Int32))
    , _oldtlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsLocationsDeidentifyTemplatesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oldtlParent'
--
-- * 'oldtlXgafv'
--
-- * 'oldtlUploadProtocol'
--
-- * 'oldtlOrderBy'
--
-- * 'oldtlAccessToken'
--
-- * 'oldtlUploadType'
--
-- * 'oldtlPageToken'
--
-- * 'oldtlLocationId'
--
-- * 'oldtlPageSize'
--
-- * 'oldtlCallback'
organizationsLocationsDeidentifyTemplatesList
    :: Text -- ^ 'oldtlParent'
    -> OrganizationsLocationsDeidentifyTemplatesList
organizationsLocationsDeidentifyTemplatesList pOldtlParent_ =
  OrganizationsLocationsDeidentifyTemplatesList'
    { _oldtlParent = pOldtlParent_
    , _oldtlXgafv = Nothing
    , _oldtlUploadProtocol = Nothing
    , _oldtlOrderBy = Nothing
    , _oldtlAccessToken = Nothing
    , _oldtlUploadType = Nothing
    , _oldtlPageToken = Nothing
    , _oldtlLocationId = Nothing
    , _oldtlPageSize = Nothing
    , _oldtlCallback = Nothing
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
oldtlParent :: Lens' OrganizationsLocationsDeidentifyTemplatesList Text
oldtlParent
  = lens _oldtlParent (\ s a -> s{_oldtlParent = a})

-- | V1 error format.
oldtlXgafv :: Lens' OrganizationsLocationsDeidentifyTemplatesList (Maybe Xgafv)
oldtlXgafv
  = lens _oldtlXgafv (\ s a -> s{_oldtlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oldtlUploadProtocol :: Lens' OrganizationsLocationsDeidentifyTemplatesList (Maybe Text)
oldtlUploadProtocol
  = lens _oldtlUploadProtocol
      (\ s a -> s{_oldtlUploadProtocol = a})

-- | Comma separated list of fields to order by, followed by \`asc\` or
-- \`desc\` postfix. This list is case-insensitive, default sorting order
-- is ascending, redundant space characters are insignificant. Example:
-- \`name asc,update_time, create_time desc\` Supported fields are: -
-- \`create_time\`: corresponds to time the template was created. -
-- \`update_time\`: corresponds to time the template was last updated. -
-- \`name\`: corresponds to template\'s name. - \`display_name\`:
-- corresponds to template\'s display name.
oldtlOrderBy :: Lens' OrganizationsLocationsDeidentifyTemplatesList (Maybe Text)
oldtlOrderBy
  = lens _oldtlOrderBy (\ s a -> s{_oldtlOrderBy = a})

-- | OAuth access token.
oldtlAccessToken :: Lens' OrganizationsLocationsDeidentifyTemplatesList (Maybe Text)
oldtlAccessToken
  = lens _oldtlAccessToken
      (\ s a -> s{_oldtlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oldtlUploadType :: Lens' OrganizationsLocationsDeidentifyTemplatesList (Maybe Text)
oldtlUploadType
  = lens _oldtlUploadType
      (\ s a -> s{_oldtlUploadType = a})

-- | Page token to continue retrieval. Comes from previous call to
-- \`ListDeidentifyTemplates\`.
oldtlPageToken :: Lens' OrganizationsLocationsDeidentifyTemplatesList (Maybe Text)
oldtlPageToken
  = lens _oldtlPageToken
      (\ s a -> s{_oldtlPageToken = a})

-- | Deprecated. This field has no effect.
oldtlLocationId :: Lens' OrganizationsLocationsDeidentifyTemplatesList (Maybe Text)
oldtlLocationId
  = lens _oldtlLocationId
      (\ s a -> s{_oldtlLocationId = a})

-- | Size of the page, can be limited by server. If zero server returns a
-- page of max size 100.
oldtlPageSize :: Lens' OrganizationsLocationsDeidentifyTemplatesList (Maybe Int32)
oldtlPageSize
  = lens _oldtlPageSize
      (\ s a -> s{_oldtlPageSize = a})
      . mapping _Coerce

-- | JSONP
oldtlCallback :: Lens' OrganizationsLocationsDeidentifyTemplatesList (Maybe Text)
oldtlCallback
  = lens _oldtlCallback
      (\ s a -> s{_oldtlCallback = a})

instance GoogleRequest
           OrganizationsLocationsDeidentifyTemplatesList
         where
        type Rs OrganizationsLocationsDeidentifyTemplatesList
             = GooglePrivacyDlpV2ListDeidentifyTemplatesResponse
        type Scopes
               OrganizationsLocationsDeidentifyTemplatesList
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          OrganizationsLocationsDeidentifyTemplatesList'{..}
          = go _oldtlParent _oldtlXgafv _oldtlUploadProtocol
              _oldtlOrderBy
              _oldtlAccessToken
              _oldtlUploadType
              _oldtlPageToken
              _oldtlLocationId
              _oldtlPageSize
              _oldtlCallback
              (Just AltJSON)
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           OrganizationsLocationsDeidentifyTemplatesListResource)
                      mempty
