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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the FHIR stores in the given dataset.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.list@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.List
    (
    -- * REST Resource
      ProjectsLocationsDataSetsFhirStoresListResource

    -- * Creating a Request
    , projectsLocationsDataSetsFhirStoresList
    , ProjectsLocationsDataSetsFhirStoresList

    -- * Request Lenses
    , pldsfslParent
    , pldsfslXgafv
    , pldsfslUploadProtocol
    , pldsfslAccessToken
    , pldsfslUploadType
    , pldsfslFilter
    , pldsfslPageToken
    , pldsfslPageSize
    , pldsfslCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.list@ method which the
-- 'ProjectsLocationsDataSetsFhirStoresList' request conforms to.
type ProjectsLocationsDataSetsFhirStoresListResource
     =
     "v1" :>
       Capture "parent" Text :>
         "fhirStores" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListFhirStoresResponse

-- | Lists the FHIR stores in the given dataset.
--
-- /See:/ 'projectsLocationsDataSetsFhirStoresList' smart constructor.
data ProjectsLocationsDataSetsFhirStoresList =
  ProjectsLocationsDataSetsFhirStoresList'
    { _pldsfslParent :: !Text
    , _pldsfslXgafv :: !(Maybe Xgafv)
    , _pldsfslUploadProtocol :: !(Maybe Text)
    , _pldsfslAccessToken :: !(Maybe Text)
    , _pldsfslUploadType :: !(Maybe Text)
    , _pldsfslFilter :: !(Maybe Text)
    , _pldsfslPageToken :: !(Maybe Text)
    , _pldsfslPageSize :: !(Maybe (Textual Int32))
    , _pldsfslCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsFhirStoresList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsfslParent'
--
-- * 'pldsfslXgafv'
--
-- * 'pldsfslUploadProtocol'
--
-- * 'pldsfslAccessToken'
--
-- * 'pldsfslUploadType'
--
-- * 'pldsfslFilter'
--
-- * 'pldsfslPageToken'
--
-- * 'pldsfslPageSize'
--
-- * 'pldsfslCallback'
projectsLocationsDataSetsFhirStoresList
    :: Text -- ^ 'pldsfslParent'
    -> ProjectsLocationsDataSetsFhirStoresList
projectsLocationsDataSetsFhirStoresList pPldsfslParent_ =
  ProjectsLocationsDataSetsFhirStoresList'
    { _pldsfslParent = pPldsfslParent_
    , _pldsfslXgafv = Nothing
    , _pldsfslUploadProtocol = Nothing
    , _pldsfslAccessToken = Nothing
    , _pldsfslUploadType = Nothing
    , _pldsfslFilter = Nothing
    , _pldsfslPageToken = Nothing
    , _pldsfslPageSize = Nothing
    , _pldsfslCallback = Nothing
    }


-- | Name of the dataset.
pldsfslParent :: Lens' ProjectsLocationsDataSetsFhirStoresList Text
pldsfslParent
  = lens _pldsfslParent
      (\ s a -> s{_pldsfslParent = a})

-- | V1 error format.
pldsfslXgafv :: Lens' ProjectsLocationsDataSetsFhirStoresList (Maybe Xgafv)
pldsfslXgafv
  = lens _pldsfslXgafv (\ s a -> s{_pldsfslXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsfslUploadProtocol :: Lens' ProjectsLocationsDataSetsFhirStoresList (Maybe Text)
pldsfslUploadProtocol
  = lens _pldsfslUploadProtocol
      (\ s a -> s{_pldsfslUploadProtocol = a})

-- | OAuth access token.
pldsfslAccessToken :: Lens' ProjectsLocationsDataSetsFhirStoresList (Maybe Text)
pldsfslAccessToken
  = lens _pldsfslAccessToken
      (\ s a -> s{_pldsfslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsfslUploadType :: Lens' ProjectsLocationsDataSetsFhirStoresList (Maybe Text)
pldsfslUploadType
  = lens _pldsfslUploadType
      (\ s a -> s{_pldsfslUploadType = a})

-- | Restricts stores returned to those matching a filter. The following
-- syntax is available: * A string field value can be written as text
-- inside quotation marks, for example \`\"query text\"\`. The only valid
-- relational operation for text fields is equality (\`=\`), where text is
-- searched within the field, rather than having the field be equal to the
-- text. For example, \`\"Comment = great\"\` returns messages with
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
-- You can prepend the \`NOT\` operator to an expression to negate it. Only
-- filtering on labels is supported, for example \`labels.key=value\`.
pldsfslFilter :: Lens' ProjectsLocationsDataSetsFhirStoresList (Maybe Text)
pldsfslFilter
  = lens _pldsfslFilter
      (\ s a -> s{_pldsfslFilter = a})

-- | The next_page_token value returned from the previous List request, if
-- any.
pldsfslPageToken :: Lens' ProjectsLocationsDataSetsFhirStoresList (Maybe Text)
pldsfslPageToken
  = lens _pldsfslPageToken
      (\ s a -> s{_pldsfslPageToken = a})

-- | Limit on the number of FHIR stores to return in a single response. If
-- not specified, 100 is used. May not be larger than 1000.
pldsfslPageSize :: Lens' ProjectsLocationsDataSetsFhirStoresList (Maybe Int32)
pldsfslPageSize
  = lens _pldsfslPageSize
      (\ s a -> s{_pldsfslPageSize = a})
      . mapping _Coerce

-- | JSONP
pldsfslCallback :: Lens' ProjectsLocationsDataSetsFhirStoresList (Maybe Text)
pldsfslCallback
  = lens _pldsfslCallback
      (\ s a -> s{_pldsfslCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsFhirStoresList
         where
        type Rs ProjectsLocationsDataSetsFhirStoresList =
             ListFhirStoresResponse
        type Scopes ProjectsLocationsDataSetsFhirStoresList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsFhirStoresList'{..}
          = go _pldsfslParent _pldsfslXgafv
              _pldsfslUploadProtocol
              _pldsfslAccessToken
              _pldsfslUploadType
              _pldsfslFilter
              _pldsfslPageToken
              _pldsfslPageSize
              _pldsfslCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsFhirStoresListResource)
                      mempty
