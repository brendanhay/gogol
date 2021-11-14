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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.Consents.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the Consent in the given consent store, returning each Consent\'s
-- latest revision.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.consents.list@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.Consents.List
    (
    -- * REST Resource
      ProjectsLocationsDataSetsConsentStoresConsentsListResource

    -- * Creating a Request
    , projectsLocationsDataSetsConsentStoresConsentsList
    , ProjectsLocationsDataSetsConsentStoresConsentsList

    -- * Request Lenses
    , pldscsclParent
    , pldscsclXgafv
    , pldscsclUploadProtocol
    , pldscsclAccessToken
    , pldscsclUploadType
    , pldscsclFilter
    , pldscsclPageToken
    , pldscsclPageSize
    , pldscsclCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.consents.list@ method which the
-- 'ProjectsLocationsDataSetsConsentStoresConsentsList' request conforms to.
type ProjectsLocationsDataSetsConsentStoresConsentsListResource
     =
     "v1" :>
       Capture "parent" Text :>
         "consents" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListConsentsResponse

-- | Lists the Consent in the given consent store, returning each Consent\'s
-- latest revision.
--
-- /See:/ 'projectsLocationsDataSetsConsentStoresConsentsList' smart constructor.
data ProjectsLocationsDataSetsConsentStoresConsentsList =
  ProjectsLocationsDataSetsConsentStoresConsentsList'
    { _pldscsclParent :: !Text
    , _pldscsclXgafv :: !(Maybe Xgafv)
    , _pldscsclUploadProtocol :: !(Maybe Text)
    , _pldscsclAccessToken :: !(Maybe Text)
    , _pldscsclUploadType :: !(Maybe Text)
    , _pldscsclFilter :: !(Maybe Text)
    , _pldscsclPageToken :: !(Maybe Text)
    , _pldscsclPageSize :: !(Maybe (Textual Int32))
    , _pldscsclCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsConsentStoresConsentsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldscsclParent'
--
-- * 'pldscsclXgafv'
--
-- * 'pldscsclUploadProtocol'
--
-- * 'pldscsclAccessToken'
--
-- * 'pldscsclUploadType'
--
-- * 'pldscsclFilter'
--
-- * 'pldscsclPageToken'
--
-- * 'pldscsclPageSize'
--
-- * 'pldscsclCallback'
projectsLocationsDataSetsConsentStoresConsentsList
    :: Text -- ^ 'pldscsclParent'
    -> ProjectsLocationsDataSetsConsentStoresConsentsList
projectsLocationsDataSetsConsentStoresConsentsList pPldscsclParent_ =
  ProjectsLocationsDataSetsConsentStoresConsentsList'
    { _pldscsclParent = pPldscsclParent_
    , _pldscsclXgafv = Nothing
    , _pldscsclUploadProtocol = Nothing
    , _pldscsclAccessToken = Nothing
    , _pldscsclUploadType = Nothing
    , _pldscsclFilter = Nothing
    , _pldscsclPageToken = Nothing
    , _pldscsclPageSize = Nothing
    , _pldscsclCallback = Nothing
    }


-- | Required. Name of the consent store to retrieve Consents from.
pldscsclParent :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsList Text
pldscsclParent
  = lens _pldscsclParent
      (\ s a -> s{_pldscsclParent = a})

-- | V1 error format.
pldscsclXgafv :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsList (Maybe Xgafv)
pldscsclXgafv
  = lens _pldscsclXgafv
      (\ s a -> s{_pldscsclXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldscsclUploadProtocol :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsList (Maybe Text)
pldscsclUploadProtocol
  = lens _pldscsclUploadProtocol
      (\ s a -> s{_pldscsclUploadProtocol = a})

-- | OAuth access token.
pldscsclAccessToken :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsList (Maybe Text)
pldscsclAccessToken
  = lens _pldscsclAccessToken
      (\ s a -> s{_pldscsclAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldscsclUploadType :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsList (Maybe Text)
pldscsclUploadType
  = lens _pldscsclUploadType
      (\ s a -> s{_pldscsclUploadType = a})

-- | Optional. Restricts the Consents returned to those matching a filter.
-- The following syntax is available: * A string field value can be written
-- as text inside quotation marks, for example \`\"query text\"\`. The only
-- valid relational operation for text fields is equality (\`=\`), where
-- text is searched within the field, rather than having the field be equal
-- to the text. For example, \`\"Comment = great\"\` returns messages with
-- \`great\` in the comment field. * A number field value can be written as
-- an integer, a decimal, or an exponential. The valid relational operators
-- for number fields are the equality operator (\`=\`), along with the less
-- than\/greater than operators (\`\<\`, \`\<=\`, \`>\`, \`>=\`). Note that
-- there is no inequality (\`!=\`) operator. You can prepend the \`NOT\`
-- operator to an expression to negate it. * A date field value must be
-- written in \`yyyy-mm-dd\` form. Fields with date and time use the
-- RFC3339 time format. Leading zeros are required for one-digit months and
-- days. The valid relational operators for date fields are the equality
-- operator (\`=\`) , along with the less than\/greater than operators
-- (\`\<\`, \`\<=\`, \`>\`, \`>=\`). Note that there is no inequality
-- (\`!=\`) operator. You can prepend the \`NOT\` operator to an expression
-- to negate it. * Multiple field query expressions can be combined in one
-- query by adding \`AND\` or \`OR\` operators between the expressions. If
-- a boolean operator appears within a quoted string, it is not treated as
-- special, it\'s just another part of the character string to be matched.
-- You can prepend the \`NOT\` operator to an expression to negate it. The
-- fields available for filtering are: - user_id. For example,
-- \`filter=\'user_id=\"user123\"\'\`. - consent_artifact - state -
-- revision_create_time - metadata. For example,
-- \`filter=Metadata(\\\"testkey\\\")=\\\"value\\\"\` or
-- \`filter=HasMetadata(\\\"testkey\\\")\`.
pldscsclFilter :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsList (Maybe Text)
pldscsclFilter
  = lens _pldscsclFilter
      (\ s a -> s{_pldscsclFilter = a})

-- | Optional. The next_page_token value returned from the previous List
-- request, if any.
pldscsclPageToken :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsList (Maybe Text)
pldscsclPageToken
  = lens _pldscsclPageToken
      (\ s a -> s{_pldscsclPageToken = a})

-- | Optional. Limit on the number of Consents to return in a single
-- response. If not specified, 100 is used. May not be larger than 1000.
pldscsclPageSize :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsList (Maybe Int32)
pldscsclPageSize
  = lens _pldscsclPageSize
      (\ s a -> s{_pldscsclPageSize = a})
      . mapping _Coerce

-- | JSONP
pldscsclCallback :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsList (Maybe Text)
pldscsclCallback
  = lens _pldscsclCallback
      (\ s a -> s{_pldscsclCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsConsentStoresConsentsList
         where
        type Rs
               ProjectsLocationsDataSetsConsentStoresConsentsList
             = ListConsentsResponse
        type Scopes
               ProjectsLocationsDataSetsConsentStoresConsentsList
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsConsentStoresConsentsList'{..}
          = go _pldscsclParent _pldscsclXgafv
              _pldscsclUploadProtocol
              _pldscsclAccessToken
              _pldscsclUploadType
              _pldscsclFilter
              _pldscsclPageToken
              _pldscsclPageSize
              _pldscsclCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsConsentStoresConsentsListResource)
                      mempty
