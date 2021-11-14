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
-- Module      : Network.Google.Resource.Compute.GlobalPublicDelegatedPrefixes.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified global PublicDelegatedPrefix.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.globalPublicDelegatedPrefixes.delete@.
module Network.Google.Resource.Compute.GlobalPublicDelegatedPrefixes.Delete
    (
    -- * REST Resource
      GlobalPublicDelegatedPrefixesDeleteResource

    -- * Creating a Request
    , globalPublicDelegatedPrefixesDelete
    , GlobalPublicDelegatedPrefixesDelete

    -- * Request Lenses
    , gpdpdRequestId
    , gpdpdPublicDelegatedPrefix
    , gpdpdProject
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.globalPublicDelegatedPrefixes.delete@ method which the
-- 'GlobalPublicDelegatedPrefixesDelete' request conforms to.
type GlobalPublicDelegatedPrefixesDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "publicDelegatedPrefixes" :>
                 Capture "publicDelegatedPrefix" Text :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified global PublicDelegatedPrefix.
--
-- /See:/ 'globalPublicDelegatedPrefixesDelete' smart constructor.
data GlobalPublicDelegatedPrefixesDelete =
  GlobalPublicDelegatedPrefixesDelete'
    { _gpdpdRequestId :: !(Maybe Text)
    , _gpdpdPublicDelegatedPrefix :: !Text
    , _gpdpdProject :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GlobalPublicDelegatedPrefixesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdpdRequestId'
--
-- * 'gpdpdPublicDelegatedPrefix'
--
-- * 'gpdpdProject'
globalPublicDelegatedPrefixesDelete
    :: Text -- ^ 'gpdpdPublicDelegatedPrefix'
    -> Text -- ^ 'gpdpdProject'
    -> GlobalPublicDelegatedPrefixesDelete
globalPublicDelegatedPrefixesDelete pGpdpdPublicDelegatedPrefix_ pGpdpdProject_ =
  GlobalPublicDelegatedPrefixesDelete'
    { _gpdpdRequestId = Nothing
    , _gpdpdPublicDelegatedPrefix = pGpdpdPublicDelegatedPrefix_
    , _gpdpdProject = pGpdpdProject_
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
gpdpdRequestId :: Lens' GlobalPublicDelegatedPrefixesDelete (Maybe Text)
gpdpdRequestId
  = lens _gpdpdRequestId
      (\ s a -> s{_gpdpdRequestId = a})

-- | Name of the PublicDelegatedPrefix resource to delete.
gpdpdPublicDelegatedPrefix :: Lens' GlobalPublicDelegatedPrefixesDelete Text
gpdpdPublicDelegatedPrefix
  = lens _gpdpdPublicDelegatedPrefix
      (\ s a -> s{_gpdpdPublicDelegatedPrefix = a})

-- | Project ID for this request.
gpdpdProject :: Lens' GlobalPublicDelegatedPrefixesDelete Text
gpdpdProject
  = lens _gpdpdProject (\ s a -> s{_gpdpdProject = a})

instance GoogleRequest
           GlobalPublicDelegatedPrefixesDelete
         where
        type Rs GlobalPublicDelegatedPrefixesDelete =
             Operation
        type Scopes GlobalPublicDelegatedPrefixesDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient
          GlobalPublicDelegatedPrefixesDelete'{..}
          = go _gpdpdProject _gpdpdPublicDelegatedPrefix
              _gpdpdRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy GlobalPublicDelegatedPrefixesDeleteResource)
                      mempty
