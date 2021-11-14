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
-- Module      : Network.Google.Resource.DLP.Organizations.InspectTemplates.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists InspectTemplates. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates to learn more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.organizations.inspectTemplates.list@.
module Network.Google.Resource.DLP.Organizations.InspectTemplates.List
    (
    -- * REST Resource
      OrganizationsInspectTemplatesListResource

    -- * Creating a Request
    , organizationsInspectTemplatesList
    , OrganizationsInspectTemplatesList

    -- * Request Lenses
    , oitlParent
    , oitlXgafv
    , oitlUploadProtocol
    , oitlOrderBy
    , oitlAccessToken
    , oitlUploadType
    , oitlPageToken
    , oitlLocationId
    , oitlPageSize
    , oitlCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.organizations.inspectTemplates.list@ method which the
-- 'OrganizationsInspectTemplatesList' request conforms to.
type OrganizationsInspectTemplatesListResource =
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
-- /See:/ 'organizationsInspectTemplatesList' smart constructor.
data OrganizationsInspectTemplatesList =
  OrganizationsInspectTemplatesList'
    { _oitlParent :: !Text
    , _oitlXgafv :: !(Maybe Xgafv)
    , _oitlUploadProtocol :: !(Maybe Text)
    , _oitlOrderBy :: !(Maybe Text)
    , _oitlAccessToken :: !(Maybe Text)
    , _oitlUploadType :: !(Maybe Text)
    , _oitlPageToken :: !(Maybe Text)
    , _oitlLocationId :: !(Maybe Text)
    , _oitlPageSize :: !(Maybe (Textual Int32))
    , _oitlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsInspectTemplatesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oitlParent'
--
-- * 'oitlXgafv'
--
-- * 'oitlUploadProtocol'
--
-- * 'oitlOrderBy'
--
-- * 'oitlAccessToken'
--
-- * 'oitlUploadType'
--
-- * 'oitlPageToken'
--
-- * 'oitlLocationId'
--
-- * 'oitlPageSize'
--
-- * 'oitlCallback'
organizationsInspectTemplatesList
    :: Text -- ^ 'oitlParent'
    -> OrganizationsInspectTemplatesList
organizationsInspectTemplatesList pOitlParent_ =
  OrganizationsInspectTemplatesList'
    { _oitlParent = pOitlParent_
    , _oitlXgafv = Nothing
    , _oitlUploadProtocol = Nothing
    , _oitlOrderBy = Nothing
    , _oitlAccessToken = Nothing
    , _oitlUploadType = Nothing
    , _oitlPageToken = Nothing
    , _oitlLocationId = Nothing
    , _oitlPageSize = Nothing
    , _oitlCallback = Nothing
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
oitlParent :: Lens' OrganizationsInspectTemplatesList Text
oitlParent
  = lens _oitlParent (\ s a -> s{_oitlParent = a})

-- | V1 error format.
oitlXgafv :: Lens' OrganizationsInspectTemplatesList (Maybe Xgafv)
oitlXgafv
  = lens _oitlXgafv (\ s a -> s{_oitlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oitlUploadProtocol :: Lens' OrganizationsInspectTemplatesList (Maybe Text)
oitlUploadProtocol
  = lens _oitlUploadProtocol
      (\ s a -> s{_oitlUploadProtocol = a})

-- | Comma separated list of fields to order by, followed by \`asc\` or
-- \`desc\` postfix. This list is case-insensitive, default sorting order
-- is ascending, redundant space characters are insignificant. Example:
-- \`name asc,update_time, create_time desc\` Supported fields are: -
-- \`create_time\`: corresponds to time the template was created. -
-- \`update_time\`: corresponds to time the template was last updated. -
-- \`name\`: corresponds to template\'s name. - \`display_name\`:
-- corresponds to template\'s display name.
oitlOrderBy :: Lens' OrganizationsInspectTemplatesList (Maybe Text)
oitlOrderBy
  = lens _oitlOrderBy (\ s a -> s{_oitlOrderBy = a})

-- | OAuth access token.
oitlAccessToken :: Lens' OrganizationsInspectTemplatesList (Maybe Text)
oitlAccessToken
  = lens _oitlAccessToken
      (\ s a -> s{_oitlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oitlUploadType :: Lens' OrganizationsInspectTemplatesList (Maybe Text)
oitlUploadType
  = lens _oitlUploadType
      (\ s a -> s{_oitlUploadType = a})

-- | Page token to continue retrieval. Comes from previous call to
-- \`ListInspectTemplates\`.
oitlPageToken :: Lens' OrganizationsInspectTemplatesList (Maybe Text)
oitlPageToken
  = lens _oitlPageToken
      (\ s a -> s{_oitlPageToken = a})

-- | Deprecated. This field has no effect.
oitlLocationId :: Lens' OrganizationsInspectTemplatesList (Maybe Text)
oitlLocationId
  = lens _oitlLocationId
      (\ s a -> s{_oitlLocationId = a})

-- | Size of the page, can be limited by server. If zero server returns a
-- page of max size 100.
oitlPageSize :: Lens' OrganizationsInspectTemplatesList (Maybe Int32)
oitlPageSize
  = lens _oitlPageSize (\ s a -> s{_oitlPageSize = a})
      . mapping _Coerce

-- | JSONP
oitlCallback :: Lens' OrganizationsInspectTemplatesList (Maybe Text)
oitlCallback
  = lens _oitlCallback (\ s a -> s{_oitlCallback = a})

instance GoogleRequest
           OrganizationsInspectTemplatesList
         where
        type Rs OrganizationsInspectTemplatesList =
             GooglePrivacyDlpV2ListInspectTemplatesResponse
        type Scopes OrganizationsInspectTemplatesList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient OrganizationsInspectTemplatesList'{..}
          = go _oitlParent _oitlXgafv _oitlUploadProtocol
              _oitlOrderBy
              _oitlAccessToken
              _oitlUploadType
              _oitlPageToken
              _oitlLocationId
              _oitlPageSize
              _oitlCallback
              (Just AltJSON)
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrganizationsInspectTemplatesListResource)
                      mempty
