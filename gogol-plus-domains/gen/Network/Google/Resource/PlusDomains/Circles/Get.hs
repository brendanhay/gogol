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
-- Module      : Network.Google.Resource.PlusDomains.Circles.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get a circle.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference> for @PlusDomainsCirclesGet@.
module Network.Google.Resource.PlusDomains.Circles.Get
    (
    -- * REST Resource
      CirclesGetResource

    -- * Creating a Request
    , circlesGet'
    , CirclesGet'

    -- * Request Lenses
    , cgCircleId
    ) where

import           Network.Google.PlusDomains.Types
import           Network.Google.Prelude

-- | A resource alias for @PlusDomainsCirclesGet@ method which the
-- 'CirclesGet'' request conforms to.
type CirclesGetResource =
     "circles" :>
       Capture "circleId" Text :>
         QueryParam "alt" AltJSON :> Get '[JSON] Circle

-- | Get a circle.
--
-- /See:/ 'circlesGet'' smart constructor.
newtype CirclesGet' = CirclesGet'
    { _cgCircleId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CirclesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgCircleId'
circlesGet'
    :: Text -- ^ 'circleId'
    -> CirclesGet'
circlesGet' pCgCircleId_ =
    CirclesGet'
    { _cgCircleId = pCgCircleId_
    }

-- | The ID of the circle to get.
cgCircleId :: Lens' CirclesGet' Text
cgCircleId
  = lens _cgCircleId (\ s a -> s{_cgCircleId = a})

instance GoogleRequest CirclesGet' where
        type Rs CirclesGet' = Circle
        requestClient CirclesGet'{..}
          = go _cgCircleId (Just AltJSON) plusDomains
          where go
                  = buildClient (Proxy :: Proxy CirclesGetResource)
                      mempty
