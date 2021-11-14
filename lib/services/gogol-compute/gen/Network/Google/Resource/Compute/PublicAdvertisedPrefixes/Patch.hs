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
-- Module      : Network.Google.Resource.Compute.PublicAdvertisedPrefixes.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Patches the specified Router resource with the data included in the
-- request. This method supports PATCH semantics and uses JSON merge patch
-- format and processing rules.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.publicAdvertisedPrefixes.patch@.
module Network.Google.Resource.Compute.PublicAdvertisedPrefixes.Patch
    (
    -- * REST Resource
      PublicAdvertisedPrefixesPatchResource

    -- * Creating a Request
    , publicAdvertisedPrefixesPatch
    , PublicAdvertisedPrefixesPatch

    -- * Request Lenses
    , pAppRequestId
    , pAppPublicAdvertisedPrefix
    , pAppProject
    , pAppPayload
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.publicAdvertisedPrefixes.patch@ method which the
-- 'PublicAdvertisedPrefixesPatch' request conforms to.
type PublicAdvertisedPrefixesPatchResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "publicAdvertisedPrefixes" :>
                 Capture "publicAdvertisedPrefix" Text :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] PublicAdvertisedPrefix :>
                         Patch '[JSON] Operation

-- | Patches the specified Router resource with the data included in the
-- request. This method supports PATCH semantics and uses JSON merge patch
-- format and processing rules.
--
-- /See:/ 'publicAdvertisedPrefixesPatch' smart constructor.
data PublicAdvertisedPrefixesPatch =
  PublicAdvertisedPrefixesPatch'
    { _pAppRequestId :: !(Maybe Text)
    , _pAppPublicAdvertisedPrefix :: !Text
    , _pAppProject :: !Text
    , _pAppPayload :: !PublicAdvertisedPrefix
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PublicAdvertisedPrefixesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pAppRequestId'
--
-- * 'pAppPublicAdvertisedPrefix'
--
-- * 'pAppProject'
--
-- * 'pAppPayload'
publicAdvertisedPrefixesPatch
    :: Text -- ^ 'pAppPublicAdvertisedPrefix'
    -> Text -- ^ 'pAppProject'
    -> PublicAdvertisedPrefix -- ^ 'pAppPayload'
    -> PublicAdvertisedPrefixesPatch
publicAdvertisedPrefixesPatch pPAppPublicAdvertisedPrefix_ pPAppProject_ pPAppPayload_ =
  PublicAdvertisedPrefixesPatch'
    { _pAppRequestId = Nothing
    , _pAppPublicAdvertisedPrefix = pPAppPublicAdvertisedPrefix_
    , _pAppProject = pPAppProject_
    , _pAppPayload = pPAppPayload_
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
pAppRequestId :: Lens' PublicAdvertisedPrefixesPatch (Maybe Text)
pAppRequestId
  = lens _pAppRequestId
      (\ s a -> s{_pAppRequestId = a})

-- | Name of the PublicAdvertisedPrefix resource to patch.
pAppPublicAdvertisedPrefix :: Lens' PublicAdvertisedPrefixesPatch Text
pAppPublicAdvertisedPrefix
  = lens _pAppPublicAdvertisedPrefix
      (\ s a -> s{_pAppPublicAdvertisedPrefix = a})

-- | Project ID for this request.
pAppProject :: Lens' PublicAdvertisedPrefixesPatch Text
pAppProject
  = lens _pAppProject (\ s a -> s{_pAppProject = a})

-- | Multipart request metadata.
pAppPayload :: Lens' PublicAdvertisedPrefixesPatch PublicAdvertisedPrefix
pAppPayload
  = lens _pAppPayload (\ s a -> s{_pAppPayload = a})

instance GoogleRequest PublicAdvertisedPrefixesPatch
         where
        type Rs PublicAdvertisedPrefixesPatch = Operation
        type Scopes PublicAdvertisedPrefixesPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient PublicAdvertisedPrefixesPatch'{..}
          = go _pAppProject _pAppPublicAdvertisedPrefix
              _pAppRequestId
              (Just AltJSON)
              _pAppPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy PublicAdvertisedPrefixesPatchResource)
                      mempty
