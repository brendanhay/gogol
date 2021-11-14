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
-- Module      : Network.Google.Resource.Compute.PublicDelegatedPrefixes.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Patches the specified PublicDelegatedPrefix resource with the data
-- included in the request. This method supports PATCH semantics and uses
-- JSON merge patch format and processing rules.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.publicDelegatedPrefixes.patch@.
module Network.Google.Resource.Compute.PublicDelegatedPrefixes.Patch
    (
    -- * REST Resource
      PublicDelegatedPrefixesPatchResource

    -- * Creating a Request
    , publicDelegatedPrefixesPatch
    , PublicDelegatedPrefixesPatch

    -- * Request Lenses
    , pdppRequestId
    , pdppPublicDelegatedPrefix
    , pdppProject
    , pdppPayload
    , pdppRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.publicDelegatedPrefixes.patch@ method which the
-- 'PublicDelegatedPrefixesPatch' request conforms to.
type PublicDelegatedPrefixesPatchResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "publicDelegatedPrefixes" :>
                   Capture "publicDelegatedPrefix" Text :>
                     QueryParam "requestId" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] PublicDelegatedPrefix :>
                           Patch '[JSON] Operation

-- | Patches the specified PublicDelegatedPrefix resource with the data
-- included in the request. This method supports PATCH semantics and uses
-- JSON merge patch format and processing rules.
--
-- /See:/ 'publicDelegatedPrefixesPatch' smart constructor.
data PublicDelegatedPrefixesPatch =
  PublicDelegatedPrefixesPatch'
    { _pdppRequestId :: !(Maybe Text)
    , _pdppPublicDelegatedPrefix :: !Text
    , _pdppProject :: !Text
    , _pdppPayload :: !PublicDelegatedPrefix
    , _pdppRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PublicDelegatedPrefixesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdppRequestId'
--
-- * 'pdppPublicDelegatedPrefix'
--
-- * 'pdppProject'
--
-- * 'pdppPayload'
--
-- * 'pdppRegion'
publicDelegatedPrefixesPatch
    :: Text -- ^ 'pdppPublicDelegatedPrefix'
    -> Text -- ^ 'pdppProject'
    -> PublicDelegatedPrefix -- ^ 'pdppPayload'
    -> Text -- ^ 'pdppRegion'
    -> PublicDelegatedPrefixesPatch
publicDelegatedPrefixesPatch pPdppPublicDelegatedPrefix_ pPdppProject_ pPdppPayload_ pPdppRegion_ =
  PublicDelegatedPrefixesPatch'
    { _pdppRequestId = Nothing
    , _pdppPublicDelegatedPrefix = pPdppPublicDelegatedPrefix_
    , _pdppProject = pPdppProject_
    , _pdppPayload = pPdppPayload_
    , _pdppRegion = pPdppRegion_
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
pdppRequestId :: Lens' PublicDelegatedPrefixesPatch (Maybe Text)
pdppRequestId
  = lens _pdppRequestId
      (\ s a -> s{_pdppRequestId = a})

-- | Name of the PublicDelegatedPrefix resource to patch.
pdppPublicDelegatedPrefix :: Lens' PublicDelegatedPrefixesPatch Text
pdppPublicDelegatedPrefix
  = lens _pdppPublicDelegatedPrefix
      (\ s a -> s{_pdppPublicDelegatedPrefix = a})

-- | Project ID for this request.
pdppProject :: Lens' PublicDelegatedPrefixesPatch Text
pdppProject
  = lens _pdppProject (\ s a -> s{_pdppProject = a})

-- | Multipart request metadata.
pdppPayload :: Lens' PublicDelegatedPrefixesPatch PublicDelegatedPrefix
pdppPayload
  = lens _pdppPayload (\ s a -> s{_pdppPayload = a})

-- | Name of the region for this request.
pdppRegion :: Lens' PublicDelegatedPrefixesPatch Text
pdppRegion
  = lens _pdppRegion (\ s a -> s{_pdppRegion = a})

instance GoogleRequest PublicDelegatedPrefixesPatch
         where
        type Rs PublicDelegatedPrefixesPatch = Operation
        type Scopes PublicDelegatedPrefixesPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient PublicDelegatedPrefixesPatch'{..}
          = go _pdppProject _pdppRegion
              _pdppPublicDelegatedPrefix
              _pdppRequestId
              (Just AltJSON)
              _pdppPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy PublicDelegatedPrefixesPatchResource)
                      mempty
