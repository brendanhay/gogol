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
-- Module      : Network.Google.Resource.Compute.PublicDelegatedPrefixes.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a PublicDelegatedPrefix in the specified project in the given
-- region using the parameters that are included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.publicDelegatedPrefixes.insert@.
module Network.Google.Resource.Compute.PublicDelegatedPrefixes.Insert
    (
    -- * REST Resource
      PublicDelegatedPrefixesInsertResource

    -- * Creating a Request
    , publicDelegatedPrefixesInsert
    , PublicDelegatedPrefixesInsert

    -- * Request Lenses
    , pdpiRequestId
    , pdpiProject
    , pdpiPayload
    , pdpiRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.publicDelegatedPrefixes.insert@ method which the
-- 'PublicDelegatedPrefixesInsert' request conforms to.
type PublicDelegatedPrefixesInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "publicDelegatedPrefixes" :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] PublicDelegatedPrefix :>
                         Post '[JSON] Operation

-- | Creates a PublicDelegatedPrefix in the specified project in the given
-- region using the parameters that are included in the request.
--
-- /See:/ 'publicDelegatedPrefixesInsert' smart constructor.
data PublicDelegatedPrefixesInsert =
  PublicDelegatedPrefixesInsert'
    { _pdpiRequestId :: !(Maybe Text)
    , _pdpiProject :: !Text
    , _pdpiPayload :: !PublicDelegatedPrefix
    , _pdpiRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PublicDelegatedPrefixesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdpiRequestId'
--
-- * 'pdpiProject'
--
-- * 'pdpiPayload'
--
-- * 'pdpiRegion'
publicDelegatedPrefixesInsert
    :: Text -- ^ 'pdpiProject'
    -> PublicDelegatedPrefix -- ^ 'pdpiPayload'
    -> Text -- ^ 'pdpiRegion'
    -> PublicDelegatedPrefixesInsert
publicDelegatedPrefixesInsert pPdpiProject_ pPdpiPayload_ pPdpiRegion_ =
  PublicDelegatedPrefixesInsert'
    { _pdpiRequestId = Nothing
    , _pdpiProject = pPdpiProject_
    , _pdpiPayload = pPdpiPayload_
    , _pdpiRegion = pPdpiRegion_
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
pdpiRequestId :: Lens' PublicDelegatedPrefixesInsert (Maybe Text)
pdpiRequestId
  = lens _pdpiRequestId
      (\ s a -> s{_pdpiRequestId = a})

-- | Project ID for this request.
pdpiProject :: Lens' PublicDelegatedPrefixesInsert Text
pdpiProject
  = lens _pdpiProject (\ s a -> s{_pdpiProject = a})

-- | Multipart request metadata.
pdpiPayload :: Lens' PublicDelegatedPrefixesInsert PublicDelegatedPrefix
pdpiPayload
  = lens _pdpiPayload (\ s a -> s{_pdpiPayload = a})

-- | Name of the region of this request.
pdpiRegion :: Lens' PublicDelegatedPrefixesInsert Text
pdpiRegion
  = lens _pdpiRegion (\ s a -> s{_pdpiRegion = a})

instance GoogleRequest PublicDelegatedPrefixesInsert
         where
        type Rs PublicDelegatedPrefixesInsert = Operation
        type Scopes PublicDelegatedPrefixesInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient PublicDelegatedPrefixesInsert'{..}
          = go _pdpiProject _pdpiRegion _pdpiRequestId
              (Just AltJSON)
              _pdpiPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy PublicDelegatedPrefixesInsertResource)
                      mempty
