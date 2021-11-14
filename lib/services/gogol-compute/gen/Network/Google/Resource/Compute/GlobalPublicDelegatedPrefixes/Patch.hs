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
-- Module      : Network.Google.Resource.Compute.GlobalPublicDelegatedPrefixes.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Patches the specified global PublicDelegatedPrefix resource with the
-- data included in the request. This method supports PATCH semantics and
-- uses JSON merge patch format and processing rules.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.globalPublicDelegatedPrefixes.patch@.
module Network.Google.Resource.Compute.GlobalPublicDelegatedPrefixes.Patch
    (
    -- * REST Resource
      GlobalPublicDelegatedPrefixesPatchResource

    -- * Creating a Request
    , globalPublicDelegatedPrefixesPatch
    , GlobalPublicDelegatedPrefixesPatch

    -- * Request Lenses
    , gpdppRequestId
    , gpdppPublicDelegatedPrefix
    , gpdppProject
    , gpdppPayload
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.globalPublicDelegatedPrefixes.patch@ method which the
-- 'GlobalPublicDelegatedPrefixesPatch' request conforms to.
type GlobalPublicDelegatedPrefixesPatchResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "publicDelegatedPrefixes" :>
                 Capture "publicDelegatedPrefix" Text :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] PublicDelegatedPrefix :>
                         Patch '[JSON] Operation

-- | Patches the specified global PublicDelegatedPrefix resource with the
-- data included in the request. This method supports PATCH semantics and
-- uses JSON merge patch format and processing rules.
--
-- /See:/ 'globalPublicDelegatedPrefixesPatch' smart constructor.
data GlobalPublicDelegatedPrefixesPatch =
  GlobalPublicDelegatedPrefixesPatch'
    { _gpdppRequestId :: !(Maybe Text)
    , _gpdppPublicDelegatedPrefix :: !Text
    , _gpdppProject :: !Text
    , _gpdppPayload :: !PublicDelegatedPrefix
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GlobalPublicDelegatedPrefixesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdppRequestId'
--
-- * 'gpdppPublicDelegatedPrefix'
--
-- * 'gpdppProject'
--
-- * 'gpdppPayload'
globalPublicDelegatedPrefixesPatch
    :: Text -- ^ 'gpdppPublicDelegatedPrefix'
    -> Text -- ^ 'gpdppProject'
    -> PublicDelegatedPrefix -- ^ 'gpdppPayload'
    -> GlobalPublicDelegatedPrefixesPatch
globalPublicDelegatedPrefixesPatch pGpdppPublicDelegatedPrefix_ pGpdppProject_ pGpdppPayload_ =
  GlobalPublicDelegatedPrefixesPatch'
    { _gpdppRequestId = Nothing
    , _gpdppPublicDelegatedPrefix = pGpdppPublicDelegatedPrefix_
    , _gpdppProject = pGpdppProject_
    , _gpdppPayload = pGpdppPayload_
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
gpdppRequestId :: Lens' GlobalPublicDelegatedPrefixesPatch (Maybe Text)
gpdppRequestId
  = lens _gpdppRequestId
      (\ s a -> s{_gpdppRequestId = a})

-- | Name of the PublicDelegatedPrefix resource to patch.
gpdppPublicDelegatedPrefix :: Lens' GlobalPublicDelegatedPrefixesPatch Text
gpdppPublicDelegatedPrefix
  = lens _gpdppPublicDelegatedPrefix
      (\ s a -> s{_gpdppPublicDelegatedPrefix = a})

-- | Project ID for this request.
gpdppProject :: Lens' GlobalPublicDelegatedPrefixesPatch Text
gpdppProject
  = lens _gpdppProject (\ s a -> s{_gpdppProject = a})

-- | Multipart request metadata.
gpdppPayload :: Lens' GlobalPublicDelegatedPrefixesPatch PublicDelegatedPrefix
gpdppPayload
  = lens _gpdppPayload (\ s a -> s{_gpdppPayload = a})

instance GoogleRequest
           GlobalPublicDelegatedPrefixesPatch
         where
        type Rs GlobalPublicDelegatedPrefixesPatch =
             Operation
        type Scopes GlobalPublicDelegatedPrefixesPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient GlobalPublicDelegatedPrefixesPatch'{..}
          = go _gpdppProject _gpdppPublicDelegatedPrefix
              _gpdppRequestId
              (Just AltJSON)
              _gpdppPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy GlobalPublicDelegatedPrefixesPatchResource)
                      mempty
