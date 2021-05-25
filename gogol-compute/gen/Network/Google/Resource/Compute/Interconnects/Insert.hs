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
-- Module      : Network.Google.Resource.Compute.Interconnects.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Interconnect in the specified project using the data included
-- in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.interconnects.insert@.
module Network.Google.Resource.Compute.Interconnects.Insert
    (
    -- * REST Resource
      InterconnectsInsertResource

    -- * Creating a Request
    , interconnectsInsert
    , InterconnectsInsert

    -- * Request Lenses
    , intnRequestId
    , intnProject
    , intnPayload
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.interconnects.insert@ method which the
-- 'InterconnectsInsert' request conforms to.
type InterconnectsInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "interconnects" :>
                 QueryParam "requestId" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Interconnect :>
                       Post '[JSON] Operation

-- | Creates a Interconnect in the specified project using the data included
-- in the request.
--
-- /See:/ 'interconnectsInsert' smart constructor.
data InterconnectsInsert =
  InterconnectsInsert'
    { _intnRequestId :: !(Maybe Text)
    , _intnProject :: !Text
    , _intnPayload :: !Interconnect
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InterconnectsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'intnRequestId'
--
-- * 'intnProject'
--
-- * 'intnPayload'
interconnectsInsert
    :: Text -- ^ 'intnProject'
    -> Interconnect -- ^ 'intnPayload'
    -> InterconnectsInsert
interconnectsInsert pIntnProject_ pIntnPayload_ =
  InterconnectsInsert'
    { _intnRequestId = Nothing
    , _intnProject = pIntnProject_
    , _intnPayload = pIntnPayload_
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
intnRequestId :: Lens' InterconnectsInsert (Maybe Text)
intnRequestId
  = lens _intnRequestId
      (\ s a -> s{_intnRequestId = a})

-- | Project ID for this request.
intnProject :: Lens' InterconnectsInsert Text
intnProject
  = lens _intnProject (\ s a -> s{_intnProject = a})

-- | Multipart request metadata.
intnPayload :: Lens' InterconnectsInsert Interconnect
intnPayload
  = lens _intnPayload (\ s a -> s{_intnPayload = a})

instance GoogleRequest InterconnectsInsert where
        type Rs InterconnectsInsert = Operation
        type Scopes InterconnectsInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient InterconnectsInsert'{..}
          = go _intnProject _intnRequestId (Just AltJSON)
              _intnPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InterconnectsInsertResource)
                      mempty
