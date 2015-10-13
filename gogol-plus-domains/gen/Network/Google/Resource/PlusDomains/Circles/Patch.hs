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
-- Module      : Network.Google.Resource.PlusDomains.Circles.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update a circle\'s description. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference> for @PlusDomainsCirclesPatch@.
module Network.Google.Resource.PlusDomains.Circles.Patch
    (
    -- * REST Resource
      CirclesPatchResource

    -- * Creating a Request
    , circlesPatch'
    , CirclesPatch'

    -- * Request Lenses
    , cpPayload
    , cpCircleId
    ) where

import           Network.Google.PlusDomains.Types
import           Network.Google.Prelude

-- | A resource alias for @PlusDomainsCirclesPatch@ method which the
-- 'CirclesPatch'' request conforms to.
type CirclesPatchResource =
     "circles" :>
       Capture "circleId" Text :>
         QueryParam "alt" AltJSON :>
           ReqBody '[JSON] Circle :> Patch '[JSON] Circle

-- | Update a circle\'s description. This method supports patch semantics.
--
-- /See:/ 'circlesPatch'' smart constructor.
data CirclesPatch' = CirclesPatch'
    { _cpPayload  :: !Circle
    , _cpCircleId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CirclesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpPayload'
--
-- * 'cpCircleId'
circlesPatch'
    :: Circle -- ^ 'payload'
    -> Text -- ^ 'circleId'
    -> CirclesPatch'
circlesPatch' pCpPayload_ pCpCircleId_ =
    CirclesPatch'
    { _cpPayload = pCpPayload_
    , _cpCircleId = pCpCircleId_
    }

-- | Multipart request metadata.
cpPayload :: Lens' CirclesPatch' Circle
cpPayload
  = lens _cpPayload (\ s a -> s{_cpPayload = a})

-- | The ID of the circle to update.
cpCircleId :: Lens' CirclesPatch' Text
cpCircleId
  = lens _cpCircleId (\ s a -> s{_cpCircleId = a})

instance GoogleRequest CirclesPatch' where
        type Rs CirclesPatch' = Circle
        requestClient CirclesPatch'{..}
          = go _cpCircleId (Just AltJSON) _cpPayload
              plusDomainsService
          where go
                  = buildClient (Proxy :: Proxy CirclesPatchResource)
                      mempty
