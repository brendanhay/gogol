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
-- Module      : Network.Google.Resource.Compute.PacketMirrorings.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of PacketMirroring resources available to the specified
-- project and region.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.packetMirrorings.list@.
module Network.Google.Resource.Compute.PacketMirrorings.List
    (
    -- * REST Resource
      PacketMirroringsListResource

    -- * Creating a Request
    , packetMirroringsList
    , PacketMirroringsList

    -- * Request Lenses
    , pmlReturnPartialSuccess
    , pmlOrderBy
    , pmlProject
    , pmlFilter
    , pmlRegion
    , pmlPageToken
    , pmlMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.packetMirrorings.list@ method which the
-- 'PacketMirroringsList' request conforms to.
type PacketMirroringsListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "packetMirrorings" :>
                   QueryParam "returnPartialSuccess" Bool :>
                     QueryParam "orderBy" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "maxResults" (Textual Word32) :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] PacketMirroringList

-- | Retrieves a list of PacketMirroring resources available to the specified
-- project and region.
--
-- /See:/ 'packetMirroringsList' smart constructor.
data PacketMirroringsList =
  PacketMirroringsList'
    { _pmlReturnPartialSuccess :: !(Maybe Bool)
    , _pmlOrderBy :: !(Maybe Text)
    , _pmlProject :: !Text
    , _pmlFilter :: !(Maybe Text)
    , _pmlRegion :: !Text
    , _pmlPageToken :: !(Maybe Text)
    , _pmlMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PacketMirroringsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmlReturnPartialSuccess'
--
-- * 'pmlOrderBy'
--
-- * 'pmlProject'
--
-- * 'pmlFilter'
--
-- * 'pmlRegion'
--
-- * 'pmlPageToken'
--
-- * 'pmlMaxResults'
packetMirroringsList
    :: Text -- ^ 'pmlProject'
    -> Text -- ^ 'pmlRegion'
    -> PacketMirroringsList
packetMirroringsList pPmlProject_ pPmlRegion_ =
  PacketMirroringsList'
    { _pmlReturnPartialSuccess = Nothing
    , _pmlOrderBy = Nothing
    , _pmlProject = pPmlProject_
    , _pmlFilter = Nothing
    , _pmlRegion = pPmlRegion_
    , _pmlPageToken = Nothing
    , _pmlMaxResults = 500
    }


-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
pmlReturnPartialSuccess :: Lens' PacketMirroringsList (Maybe Bool)
pmlReturnPartialSuccess
  = lens _pmlReturnPartialSuccess
      (\ s a -> s{_pmlReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
pmlOrderBy :: Lens' PacketMirroringsList (Maybe Text)
pmlOrderBy
  = lens _pmlOrderBy (\ s a -> s{_pmlOrderBy = a})

-- | Project ID for this request.
pmlProject :: Lens' PacketMirroringsList Text
pmlProject
  = lens _pmlProject (\ s a -> s{_pmlProject = a})

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
pmlFilter :: Lens' PacketMirroringsList (Maybe Text)
pmlFilter
  = lens _pmlFilter (\ s a -> s{_pmlFilter = a})

-- | Name of the region for this request.
pmlRegion :: Lens' PacketMirroringsList Text
pmlRegion
  = lens _pmlRegion (\ s a -> s{_pmlRegion = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
pmlPageToken :: Lens' PacketMirroringsList (Maybe Text)
pmlPageToken
  = lens _pmlPageToken (\ s a -> s{_pmlPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
pmlMaxResults :: Lens' PacketMirroringsList Word32
pmlMaxResults
  = lens _pmlMaxResults
      (\ s a -> s{_pmlMaxResults = a})
      . _Coerce

instance GoogleRequest PacketMirroringsList where
        type Rs PacketMirroringsList = PacketMirroringList
        type Scopes PacketMirroringsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient PacketMirroringsList'{..}
          = go _pmlProject _pmlRegion _pmlReturnPartialSuccess
              _pmlOrderBy
              _pmlFilter
              _pmlPageToken
              (Just _pmlMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy PacketMirroringsListResource)
                      mempty
