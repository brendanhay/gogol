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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the DICOM stores in the given dataset.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.dicomStores.list@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.List
    (
    -- * REST Resource
      ProjectsLocationsDataSetsDicomStoresListResource

    -- * Creating a Request
    , projectsLocationsDataSetsDicomStoresList
    , ProjectsLocationsDataSetsDicomStoresList

    -- * Request Lenses
    , pldsdslParent
    , pldsdslXgafv
    , pldsdslUploadProtocol
    , pldsdslAccessToken
    , pldsdslUploadType
    , pldsdslFilter
    , pldsdslPageToken
    , pldsdslPageSize
    , pldsdslCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.dicomStores.list@ method which the
-- 'ProjectsLocationsDataSetsDicomStoresList' request conforms to.
type ProjectsLocationsDataSetsDicomStoresListResource
     =
     "v1" :>
       Capture "parent" Text :>
         "dicomStores" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListDicomStoresResponse

-- | Lists the DICOM stores in the given dataset.
--
-- /See:/ 'projectsLocationsDataSetsDicomStoresList' smart constructor.
data ProjectsLocationsDataSetsDicomStoresList =
  ProjectsLocationsDataSetsDicomStoresList'
    { _pldsdslParent :: !Text
    , _pldsdslXgafv :: !(Maybe Xgafv)
    , _pldsdslUploadProtocol :: !(Maybe Text)
    , _pldsdslAccessToken :: !(Maybe Text)
    , _pldsdslUploadType :: !(Maybe Text)
    , _pldsdslFilter :: !(Maybe Text)
    , _pldsdslPageToken :: !(Maybe Text)
    , _pldsdslPageSize :: !(Maybe (Textual Int32))
    , _pldsdslCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsDicomStoresList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsdslParent'
--
-- * 'pldsdslXgafv'
--
-- * 'pldsdslUploadProtocol'
--
-- * 'pldsdslAccessToken'
--
-- * 'pldsdslUploadType'
--
-- * 'pldsdslFilter'
--
-- * 'pldsdslPageToken'
--
-- * 'pldsdslPageSize'
--
-- * 'pldsdslCallback'
projectsLocationsDataSetsDicomStoresList
    :: Text -- ^ 'pldsdslParent'
    -> ProjectsLocationsDataSetsDicomStoresList
projectsLocationsDataSetsDicomStoresList pPldsdslParent_ =
  ProjectsLocationsDataSetsDicomStoresList'
    { _pldsdslParent = pPldsdslParent_
    , _pldsdslXgafv = Nothing
    , _pldsdslUploadProtocol = Nothing
    , _pldsdslAccessToken = Nothing
    , _pldsdslUploadType = Nothing
    , _pldsdslFilter = Nothing
    , _pldsdslPageToken = Nothing
    , _pldsdslPageSize = Nothing
    , _pldsdslCallback = Nothing
    }


-- | Name of the dataset.
pldsdslParent :: Lens' ProjectsLocationsDataSetsDicomStoresList Text
pldsdslParent
  = lens _pldsdslParent
      (\ s a -> s{_pldsdslParent = a})

-- | V1 error format.
pldsdslXgafv :: Lens' ProjectsLocationsDataSetsDicomStoresList (Maybe Xgafv)
pldsdslXgafv
  = lens _pldsdslXgafv (\ s a -> s{_pldsdslXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsdslUploadProtocol :: Lens' ProjectsLocationsDataSetsDicomStoresList (Maybe Text)
pldsdslUploadProtocol
  = lens _pldsdslUploadProtocol
      (\ s a -> s{_pldsdslUploadProtocol = a})

-- | OAuth access token.
pldsdslAccessToken :: Lens' ProjectsLocationsDataSetsDicomStoresList (Maybe Text)
pldsdslAccessToken
  = lens _pldsdslAccessToken
      (\ s a -> s{_pldsdslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsdslUploadType :: Lens' ProjectsLocationsDataSetsDicomStoresList (Maybe Text)
pldsdslUploadType
  = lens _pldsdslUploadType
      (\ s a -> s{_pldsdslUploadType = a})

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
-- filtering on labels is supported. For example, \`labels.key=value\`.
pldsdslFilter :: Lens' ProjectsLocationsDataSetsDicomStoresList (Maybe Text)
pldsdslFilter
  = lens _pldsdslFilter
      (\ s a -> s{_pldsdslFilter = a})

-- | The next_page_token value returned from the previous List request, if
-- any.
pldsdslPageToken :: Lens' ProjectsLocationsDataSetsDicomStoresList (Maybe Text)
pldsdslPageToken
  = lens _pldsdslPageToken
      (\ s a -> s{_pldsdslPageToken = a})

-- | Limit on the number of DICOM stores to return in a single response. If
-- not specified, 100 is used. May not be larger than 1000.
pldsdslPageSize :: Lens' ProjectsLocationsDataSetsDicomStoresList (Maybe Int32)
pldsdslPageSize
  = lens _pldsdslPageSize
      (\ s a -> s{_pldsdslPageSize = a})
      . mapping _Coerce

-- | JSONP
pldsdslCallback :: Lens' ProjectsLocationsDataSetsDicomStoresList (Maybe Text)
pldsdslCallback
  = lens _pldsdslCallback
      (\ s a -> s{_pldsdslCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsDicomStoresList
         where
        type Rs ProjectsLocationsDataSetsDicomStoresList =
             ListDicomStoresResponse
        type Scopes ProjectsLocationsDataSetsDicomStoresList
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsDicomStoresList'{..}
          = go _pldsdslParent _pldsdslXgafv
              _pldsdslUploadProtocol
              _pldsdslAccessToken
              _pldsdslUploadType
              _pldsdslFilter
              _pldsdslPageToken
              _pldsdslPageSize
              _pldsdslCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsDicomStoresListResource)
                      mempty
