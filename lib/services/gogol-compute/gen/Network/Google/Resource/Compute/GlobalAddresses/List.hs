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
-- Module      : Network.Google.Resource.Compute.GlobalAddresses.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of global addresses.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.globalAddresses.list@.
module Network.Google.Resource.Compute.GlobalAddresses.List
    (
    -- * REST Resource
      GlobalAddressesListResource

    -- * Creating a Request
    , globalAddressesList
    , GlobalAddressesList

    -- * Request Lenses
    , galReturnPartialSuccess
    , galOrderBy
    , galProject
    , galFilter
    , galPageToken
    , galMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.globalAddresses.list@ method which the
-- 'GlobalAddressesList' request conforms to.
type GlobalAddressesListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "addresses" :>
                 QueryParam "returnPartialSuccess" Bool :>
                   QueryParam "orderBy" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "maxResults" (Textual Word32) :>
                           QueryParam "alt" AltJSON :> Get '[JSON] AddressList

-- | Retrieves a list of global addresses.
--
-- /See:/ 'globalAddressesList' smart constructor.
data GlobalAddressesList =
  GlobalAddressesList'
    { _galReturnPartialSuccess :: !(Maybe Bool)
    , _galOrderBy :: !(Maybe Text)
    , _galProject :: !Text
    , _galFilter :: !(Maybe Text)
    , _galPageToken :: !(Maybe Text)
    , _galMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GlobalAddressesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'galReturnPartialSuccess'
--
-- * 'galOrderBy'
--
-- * 'galProject'
--
-- * 'galFilter'
--
-- * 'galPageToken'
--
-- * 'galMaxResults'
globalAddressesList
    :: Text -- ^ 'galProject'
    -> GlobalAddressesList
globalAddressesList pGalProject_ =
  GlobalAddressesList'
    { _galReturnPartialSuccess = Nothing
    , _galOrderBy = Nothing
    , _galProject = pGalProject_
    , _galFilter = Nothing
    , _galPageToken = Nothing
    , _galMaxResults = 500
    }


-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
galReturnPartialSuccess :: Lens' GlobalAddressesList (Maybe Bool)
galReturnPartialSuccess
  = lens _galReturnPartialSuccess
      (\ s a -> s{_galReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
galOrderBy :: Lens' GlobalAddressesList (Maybe Text)
galOrderBy
  = lens _galOrderBy (\ s a -> s{_galOrderBy = a})

-- | Project ID for this request.
galProject :: Lens' GlobalAddressesList Text
galProject
  = lens _galProject (\ s a -> s{_galProject = a})

-- | A filter expression that filters resources listed in the response. The
-- expression must specify the field name, a comparison operator, and the
-- value that you want to use for filtering. The value must be a string, a
-- number, or a boolean. The comparison operator must be either \`=\`,
-- \`!=\`, \`>\`, or \`\<\`. For example, if you are filtering Compute
-- Engine instances, you can exclude instances named \`example-instance\`
-- by specifying \`name != example-instance\`. You can also filter nested
-- fields. For example, you could specify \`scheduling.automaticRestart =
-- false\` to include instances only if they are not scheduled for
-- automatic restarts. You can use filtering on nested fields to filter
-- based on resource labels. To filter on multiple expressions, provide
-- each separate expression within parentheses. For example: \`\`\`
-- (scheduling.automaticRestart = true) (cpuPlatform = \"Intel Skylake\")
-- \`\`\` By default, each expression is an \`AND\` expression. However,
-- you can include \`AND\` and \`OR\` expressions explicitly. For example:
-- \`\`\` (cpuPlatform = \"Intel Skylake\") OR (cpuPlatform = \"Intel
-- Broadwell\") AND (scheduling.automaticRestart = true) \`\`\`
galFilter :: Lens' GlobalAddressesList (Maybe Text)
galFilter
  = lens _galFilter (\ s a -> s{_galFilter = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
galPageToken :: Lens' GlobalAddressesList (Maybe Text)
galPageToken
  = lens _galPageToken (\ s a -> s{_galPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
galMaxResults :: Lens' GlobalAddressesList Word32
galMaxResults
  = lens _galMaxResults
      (\ s a -> s{_galMaxResults = a})
      . _Coerce

instance GoogleRequest GlobalAddressesList where
        type Rs GlobalAddressesList = AddressList
        type Scopes GlobalAddressesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient GlobalAddressesList'{..}
          = go _galProject _galReturnPartialSuccess _galOrderBy
              _galFilter
              _galPageToken
              (Just _galMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy GlobalAddressesListResource)
                      mempty
