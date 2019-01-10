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
-- Module      : Network.Google.Resource.DLP.Organizations.DeidentifyTemplates.List
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
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.organizations.deidentifyTemplates.list@.
module Network.Google.Resource.DLP.Organizations.DeidentifyTemplates.List
    (
    -- * REST Resource
      OrganizationsDeidentifyTemplatesListResource

    -- * Creating a Request
    , organizationsDeidentifyTemplatesList
    , OrganizationsDeidentifyTemplatesList

    -- * Request Lenses
    , odtlParent
    , odtlXgafv
    , odtlUploadProtocol
    , odtlOrderBy
    , odtlAccessToken
    , odtlUploadType
    , odtlPageToken
    , odtlPageSize
    , odtlCallback
    ) where

import           Network.Google.DLP.Types
import           Network.Google.Prelude

-- | A resource alias for @dlp.organizations.deidentifyTemplates.list@ method which the
-- 'OrganizationsDeidentifyTemplatesList' request conforms to.
type OrganizationsDeidentifyTemplatesListResource =
     "v2" :>
       Capture "parent" Text :>
         "deidentifyTemplates" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "orderBy" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON]
                               GooglePrivacyDlpV2ListDeidentifyTemplatesResponse

-- | Lists DeidentifyTemplates. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates-deid to learn
-- more.
--
-- /See:/ 'organizationsDeidentifyTemplatesList' smart constructor.
data OrganizationsDeidentifyTemplatesList = OrganizationsDeidentifyTemplatesList'
    { _odtlParent         :: !Text
    , _odtlXgafv          :: !(Maybe Xgafv)
    , _odtlUploadProtocol :: !(Maybe Text)
    , _odtlOrderBy        :: !(Maybe Text)
    , _odtlAccessToken    :: !(Maybe Text)
    , _odtlUploadType     :: !(Maybe Text)
    , _odtlPageToken      :: !(Maybe Text)
    , _odtlPageSize       :: !(Maybe (Textual Int32))
    , _odtlCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrganizationsDeidentifyTemplatesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'odtlParent'
--
-- * 'odtlXgafv'
--
-- * 'odtlUploadProtocol'
--
-- * 'odtlOrderBy'
--
-- * 'odtlAccessToken'
--
-- * 'odtlUploadType'
--
-- * 'odtlPageToken'
--
-- * 'odtlPageSize'
--
-- * 'odtlCallback'
organizationsDeidentifyTemplatesList
    :: Text -- ^ 'odtlParent'
    -> OrganizationsDeidentifyTemplatesList
organizationsDeidentifyTemplatesList pOdtlParent_ =
    OrganizationsDeidentifyTemplatesList'
    { _odtlParent = pOdtlParent_
    , _odtlXgafv = Nothing
    , _odtlUploadProtocol = Nothing
    , _odtlOrderBy = Nothing
    , _odtlAccessToken = Nothing
    , _odtlUploadType = Nothing
    , _odtlPageToken = Nothing
    , _odtlPageSize = Nothing
    , _odtlCallback = Nothing
    }

-- | The parent resource name, for example projects\/my-project-id or
-- organizations\/my-org-id.
odtlParent :: Lens' OrganizationsDeidentifyTemplatesList Text
odtlParent
  = lens _odtlParent (\ s a -> s{_odtlParent = a})

-- | V1 error format.
odtlXgafv :: Lens' OrganizationsDeidentifyTemplatesList (Maybe Xgafv)
odtlXgafv
  = lens _odtlXgafv (\ s a -> s{_odtlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
odtlUploadProtocol :: Lens' OrganizationsDeidentifyTemplatesList (Maybe Text)
odtlUploadProtocol
  = lens _odtlUploadProtocol
      (\ s a -> s{_odtlUploadProtocol = a})

-- | Optional comma separated list of fields to order by, followed by \`asc\`
-- or \`desc\` postfix. This list is case-insensitive, default sorting
-- order is ascending, redundant space characters are insignificant.
-- Example: \`name asc,update_time, create_time desc\` Supported fields
-- are: - \`create_time\`: corresponds to time the template was created. -
-- \`update_time\`: corresponds to time the template was last updated. -
-- \`name\`: corresponds to template\'s name. - \`display_name\`:
-- corresponds to template\'s display name.
odtlOrderBy :: Lens' OrganizationsDeidentifyTemplatesList (Maybe Text)
odtlOrderBy
  = lens _odtlOrderBy (\ s a -> s{_odtlOrderBy = a})

-- | OAuth access token.
odtlAccessToken :: Lens' OrganizationsDeidentifyTemplatesList (Maybe Text)
odtlAccessToken
  = lens _odtlAccessToken
      (\ s a -> s{_odtlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
odtlUploadType :: Lens' OrganizationsDeidentifyTemplatesList (Maybe Text)
odtlUploadType
  = lens _odtlUploadType
      (\ s a -> s{_odtlUploadType = a})

-- | Optional page token to continue retrieval. Comes from previous call to
-- \`ListDeidentifyTemplates\`.
odtlPageToken :: Lens' OrganizationsDeidentifyTemplatesList (Maybe Text)
odtlPageToken
  = lens _odtlPageToken
      (\ s a -> s{_odtlPageToken = a})

-- | Optional size of the page, can be limited by server. If zero server
-- returns a page of max size 100.
odtlPageSize :: Lens' OrganizationsDeidentifyTemplatesList (Maybe Int32)
odtlPageSize
  = lens _odtlPageSize (\ s a -> s{_odtlPageSize = a})
      . mapping _Coerce

-- | JSONP
odtlCallback :: Lens' OrganizationsDeidentifyTemplatesList (Maybe Text)
odtlCallback
  = lens _odtlCallback (\ s a -> s{_odtlCallback = a})

instance GoogleRequest
         OrganizationsDeidentifyTemplatesList where
        type Rs OrganizationsDeidentifyTemplatesList =
             GooglePrivacyDlpV2ListDeidentifyTemplatesResponse
        type Scopes OrganizationsDeidentifyTemplatesList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          OrganizationsDeidentifyTemplatesList'{..}
          = go _odtlParent _odtlXgafv _odtlUploadProtocol
              _odtlOrderBy
              _odtlAccessToken
              _odtlUploadType
              _odtlPageToken
              _odtlPageSize
              _odtlCallback
              (Just AltJSON)
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrganizationsDeidentifyTemplatesListResource)
                      mempty
