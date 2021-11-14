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
-- Module      : Network.Google.Resource.Compute.PublicDelegatedPrefixes.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified PublicDelegatedPrefix in the given region.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.publicDelegatedPrefixes.delete@.
module Network.Google.Resource.Compute.PublicDelegatedPrefixes.Delete
    (
    -- * REST Resource
      PublicDelegatedPrefixesDeleteResource

    -- * Creating a Request
    , publicDelegatedPrefixesDelete
    , PublicDelegatedPrefixesDelete

    -- * Request Lenses
    , pdpdRequestId
    , pdpdPublicDelegatedPrefix
    , pdpdProject
    , pdpdRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.publicDelegatedPrefixes.delete@ method which the
-- 'PublicDelegatedPrefixesDelete' request conforms to.
type PublicDelegatedPrefixesDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "publicDelegatedPrefixes" :>
                   Capture "publicDelegatedPrefix" Text :>
                     QueryParam "requestId" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified PublicDelegatedPrefix in the given region.
--
-- /See:/ 'publicDelegatedPrefixesDelete' smart constructor.
data PublicDelegatedPrefixesDelete =
  PublicDelegatedPrefixesDelete'
    { _pdpdRequestId :: !(Maybe Text)
    , _pdpdPublicDelegatedPrefix :: !Text
    , _pdpdProject :: !Text
    , _pdpdRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PublicDelegatedPrefixesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdpdRequestId'
--
-- * 'pdpdPublicDelegatedPrefix'
--
-- * 'pdpdProject'
--
-- * 'pdpdRegion'
publicDelegatedPrefixesDelete
    :: Text -- ^ 'pdpdPublicDelegatedPrefix'
    -> Text -- ^ 'pdpdProject'
    -> Text -- ^ 'pdpdRegion'
    -> PublicDelegatedPrefixesDelete
publicDelegatedPrefixesDelete pPdpdPublicDelegatedPrefix_ pPdpdProject_ pPdpdRegion_ =
  PublicDelegatedPrefixesDelete'
    { _pdpdRequestId = Nothing
    , _pdpdPublicDelegatedPrefix = pPdpdPublicDelegatedPrefix_
    , _pdpdProject = pPdpdProject_
    , _pdpdRegion = pPdpdRegion_
    }


-- | An optional request ID to identify requests. Specify a unique request ID
-- so that if you must retry your request, the server will know to ignore
-- the request if it has already been completed. For example, consider a
-- situation where you make an initial request and the request times out.
-- If you make the request again with the same request ID, the server can
-- check if original operation with the same request ID was received, and
-- if so, will ignore the second request. This prevents clients from
-- accidentally creating duplicate commitments. The request ID must be a
-- valid UUID with the exception that zero UUID is not supported
-- (00000000-0000-0000-0000-000000000000).
pdpdRequestId :: Lens' PublicDelegatedPrefixesDelete (Maybe Text)
pdpdRequestId
  = lens _pdpdRequestId
      (\ s a -> s{_pdpdRequestId = a})

-- | Name of the PublicDelegatedPrefix resource to delete.
pdpdPublicDelegatedPrefix :: Lens' PublicDelegatedPrefixesDelete Text
pdpdPublicDelegatedPrefix
  = lens _pdpdPublicDelegatedPrefix
      (\ s a -> s{_pdpdPublicDelegatedPrefix = a})

-- | Project ID for this request.
pdpdProject :: Lens' PublicDelegatedPrefixesDelete Text
pdpdProject
  = lens _pdpdProject (\ s a -> s{_pdpdProject = a})

-- | Name of the region of this request.
pdpdRegion :: Lens' PublicDelegatedPrefixesDelete Text
pdpdRegion
  = lens _pdpdRegion (\ s a -> s{_pdpdRegion = a})

instance GoogleRequest PublicDelegatedPrefixesDelete
         where
        type Rs PublicDelegatedPrefixesDelete = Operation
        type Scopes PublicDelegatedPrefixesDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient PublicDelegatedPrefixesDelete'{..}
          = go _pdpdProject _pdpdRegion
              _pdpdPublicDelegatedPrefix
              _pdpdRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy PublicDelegatedPrefixesDeleteResource)
                      mempty
