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
-- Module      : Network.Google.Resource.Content.Datafeeds.Custombatch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.datafeeds.custombatch@.
module Network.Google.Resource.Content.Datafeeds.Custombatch
    (
    -- * REST Resource
      DatafeedsCustombatchResource

    -- * Creating a Request
    , datafeedsCustombatch
    , DatafeedsCustombatch

    -- * Request Lenses
    , dPayload
    , dDryRun
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.datafeeds.custombatch@ method which the
-- 'DatafeedsCustombatch' request conforms to.
type DatafeedsCustombatchResource =
     "content" :>
       "v2" :>
         "datafeeds" :>
           "batch" :>
             QueryParam "dryRun" Bool :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] DatafeedsCustomBatchRequest :>
                   Post '[JSON] DatafeedsCustomBatchResponse

--
-- /See:/ 'datafeedsCustombatch' smart constructor.
data DatafeedsCustombatch = DatafeedsCustombatch'
    { _dPayload :: !DatafeedsCustomBatchRequest
    , _dDryRun  :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatafeedsCustombatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dPayload'
--
-- * 'dDryRun'
datafeedsCustombatch
    :: DatafeedsCustomBatchRequest -- ^ 'dPayload'
    -> DatafeedsCustombatch
datafeedsCustombatch pDPayload_ =
    DatafeedsCustombatch'
    { _dPayload = pDPayload_
    , _dDryRun = Nothing
    }

-- | Multipart request metadata.
dPayload :: Lens' DatafeedsCustombatch DatafeedsCustomBatchRequest
dPayload = lens _dPayload (\ s a -> s{_dPayload = a})

-- | Flag to run the request in dry-run mode.
dDryRun :: Lens' DatafeedsCustombatch (Maybe Bool)
dDryRun = lens _dDryRun (\ s a -> s{_dDryRun = a})

instance GoogleRequest DatafeedsCustombatch where
        type Rs DatafeedsCustombatch =
             DatafeedsCustomBatchResponse
        type Scopes DatafeedsCustombatch =
             '["https://www.googleapis.com/auth/content"]
        requestClient DatafeedsCustombatch'{..}
          = go _dDryRun (Just AltJSON) _dPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy DatafeedsCustombatchResource)
                      mempty
