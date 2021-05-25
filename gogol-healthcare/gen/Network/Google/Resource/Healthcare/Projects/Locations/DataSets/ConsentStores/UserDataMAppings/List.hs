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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.UserDataMAppings.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the User data mappings in the specified consent store.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.userDataMappings.list@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.UserDataMAppings.List
    (
    -- * REST Resource
      ProjectsLocationsDataSetsConsentStoresUserDataMAppingsListResource

    -- * Creating a Request
    , projectsLocationsDataSetsConsentStoresUserDataMAppingsList
    , ProjectsLocationsDataSetsConsentStoresUserDataMAppingsList

    -- * Request Lenses
    , pldscsudmalParent
    , pldscsudmalXgafv
    , pldscsudmalUploadProtocol
    , pldscsudmalAccessToken
    , pldscsudmalUploadType
    , pldscsudmalFilter
    , pldscsudmalPageToken
    , pldscsudmalPageSize
    , pldscsudmalCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.userDataMappings.list@ method which the
-- 'ProjectsLocationsDataSetsConsentStoresUserDataMAppingsList' request conforms to.
type ProjectsLocationsDataSetsConsentStoresUserDataMAppingsListResource
     =
     "v1" :>
       Capture "parent" Text :>
         "userDataMappings" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListUserDataMAppingsResponse

-- | Lists the User data mappings in the specified consent store.
--
-- /See:/ 'projectsLocationsDataSetsConsentStoresUserDataMAppingsList' smart constructor.
data ProjectsLocationsDataSetsConsentStoresUserDataMAppingsList =
  ProjectsLocationsDataSetsConsentStoresUserDataMAppingsList'
    { _pldscsudmalParent :: !Text
    , _pldscsudmalXgafv :: !(Maybe Xgafv)
    , _pldscsudmalUploadProtocol :: !(Maybe Text)
    , _pldscsudmalAccessToken :: !(Maybe Text)
    , _pldscsudmalUploadType :: !(Maybe Text)
    , _pldscsudmalFilter :: !(Maybe Text)
    , _pldscsudmalPageToken :: !(Maybe Text)
    , _pldscsudmalPageSize :: !(Maybe (Textual Int32))
    , _pldscsudmalCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsConsentStoresUserDataMAppingsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldscsudmalParent'
--
-- * 'pldscsudmalXgafv'
--
-- * 'pldscsudmalUploadProtocol'
--
-- * 'pldscsudmalAccessToken'
--
-- * 'pldscsudmalUploadType'
--
-- * 'pldscsudmalFilter'
--
-- * 'pldscsudmalPageToken'
--
-- * 'pldscsudmalPageSize'
--
-- * 'pldscsudmalCallback'
projectsLocationsDataSetsConsentStoresUserDataMAppingsList
    :: Text -- ^ 'pldscsudmalParent'
    -> ProjectsLocationsDataSetsConsentStoresUserDataMAppingsList
projectsLocationsDataSetsConsentStoresUserDataMAppingsList pPldscsudmalParent_ =
  ProjectsLocationsDataSetsConsentStoresUserDataMAppingsList'
    { _pldscsudmalParent = pPldscsudmalParent_
    , _pldscsudmalXgafv = Nothing
    , _pldscsudmalUploadProtocol = Nothing
    , _pldscsudmalAccessToken = Nothing
    , _pldscsudmalUploadType = Nothing
    , _pldscsudmalFilter = Nothing
    , _pldscsudmalPageToken = Nothing
    , _pldscsudmalPageSize = Nothing
    , _pldscsudmalCallback = Nothing
    }


-- | Required. Name of the consent store to retrieve User data mappings from.
pldscsudmalParent :: Lens' ProjectsLocationsDataSetsConsentStoresUserDataMAppingsList Text
pldscsudmalParent
  = lens _pldscsudmalParent
      (\ s a -> s{_pldscsudmalParent = a})

-- | V1 error format.
pldscsudmalXgafv :: Lens' ProjectsLocationsDataSetsConsentStoresUserDataMAppingsList (Maybe Xgafv)
pldscsudmalXgafv
  = lens _pldscsudmalXgafv
      (\ s a -> s{_pldscsudmalXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldscsudmalUploadProtocol :: Lens' ProjectsLocationsDataSetsConsentStoresUserDataMAppingsList (Maybe Text)
pldscsudmalUploadProtocol
  = lens _pldscsudmalUploadProtocol
      (\ s a -> s{_pldscsudmalUploadProtocol = a})

-- | OAuth access token.
pldscsudmalAccessToken :: Lens' ProjectsLocationsDataSetsConsentStoresUserDataMAppingsList (Maybe Text)
pldscsudmalAccessToken
  = lens _pldscsudmalAccessToken
      (\ s a -> s{_pldscsudmalAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldscsudmalUploadType :: Lens' ProjectsLocationsDataSetsConsentStoresUserDataMAppingsList (Maybe Text)
pldscsudmalUploadType
  = lens _pldscsudmalUploadType
      (\ s a -> s{_pldscsudmalUploadType = a})

-- | Optional. Restricts the User data mappings returned to those matching a
-- filter. The following syntax is available: * A string field value can be
-- written as text inside quotation marks, for example \`\"query text\"\`.
-- The only valid relational operation for text fields is equality (\`=\`),
-- where text is searched within the field, rather than having the field be
-- equal to the text. For example, \`\"Comment = great\"\` returns messages
-- with \`great\` in the comment field. * A number field value can be
-- written as an integer, a decimal, or an exponential. The valid
-- relational operators for number fields are the equality operator
-- (\`=\`), along with the less than\/greater than operators (\`\<\`,
-- \`\<=\`, \`>\`, \`>=\`). Note that there is no inequality (\`!=\`)
-- operator. You can prepend the \`NOT\` operator to an expression to
-- negate it. * A date field value must be written in \`yyyy-mm-dd\` form.
-- Fields with date and time use the RFC3339 time format. Leading zeros are
-- required for one-digit months and days. The valid relational operators
-- for date fields are the equality operator (\`=\`) , along with the less
-- than\/greater than operators (\`\<\`, \`\<=\`, \`>\`, \`>=\`). Note that
-- there is no inequality (\`!=\`) operator. You can prepend the \`NOT\`
-- operator to an expression to negate it. * Multiple field query
-- expressions can be combined in one query by adding \`AND\` or \`OR\`
-- operators between the expressions. If a boolean operator appears within
-- a quoted string, it is not treated as special, it\'s just another part
-- of the character string to be matched. You can prepend the \`NOT\`
-- operator to an expression to negate it. The fields available for
-- filtering are: - data_id - user_id. For example,
-- \`filter=user_id=\\\"user123\\\"\`. - archived - archive_time
pldscsudmalFilter :: Lens' ProjectsLocationsDataSetsConsentStoresUserDataMAppingsList (Maybe Text)
pldscsudmalFilter
  = lens _pldscsudmalFilter
      (\ s a -> s{_pldscsudmalFilter = a})

-- | Optional. Token to retrieve the next page of results, or empty to get
-- the first page.
pldscsudmalPageToken :: Lens' ProjectsLocationsDataSetsConsentStoresUserDataMAppingsList (Maybe Text)
pldscsudmalPageToken
  = lens _pldscsudmalPageToken
      (\ s a -> s{_pldscsudmalPageToken = a})

-- | Optional. Limit on the number of User data mappings to return in a
-- single response. If not specified, 100 is used. May not be larger than
-- 1000.
pldscsudmalPageSize :: Lens' ProjectsLocationsDataSetsConsentStoresUserDataMAppingsList (Maybe Int32)
pldscsudmalPageSize
  = lens _pldscsudmalPageSize
      (\ s a -> s{_pldscsudmalPageSize = a})
      . mapping _Coerce

-- | JSONP
pldscsudmalCallback :: Lens' ProjectsLocationsDataSetsConsentStoresUserDataMAppingsList (Maybe Text)
pldscsudmalCallback
  = lens _pldscsudmalCallback
      (\ s a -> s{_pldscsudmalCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsConsentStoresUserDataMAppingsList
         where
        type Rs
               ProjectsLocationsDataSetsConsentStoresUserDataMAppingsList
             = ListUserDataMAppingsResponse
        type Scopes
               ProjectsLocationsDataSetsConsentStoresUserDataMAppingsList
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsConsentStoresUserDataMAppingsList'{..}
          = go _pldscsudmalParent _pldscsudmalXgafv
              _pldscsudmalUploadProtocol
              _pldscsudmalAccessToken
              _pldscsudmalUploadType
              _pldscsudmalFilter
              _pldscsudmalPageToken
              _pldscsudmalPageSize
              _pldscsudmalCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsConsentStoresUserDataMAppingsListResource)
                      mempty
