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
-- Module      : Network.Google.Resource.PlusDomains.Circles.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a new circle for the authenticated user.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference> for @plusDomains.circles.insert@.
module Network.Google.Resource.PlusDomains.Circles.Insert
    (
    -- * REST Resource
      CirclesInsertResource

    -- * Creating a Request
    , circlesInsert
    , CirclesInsert

    -- * Request Lenses
    , ciPayload
    , ciUserId
    ) where

import           Network.Google.PlusDomains.Types
import           Network.Google.Prelude

-- | A resource alias for @plusDomains.circles.insert@ method which the
-- 'CirclesInsert' request conforms to.
type CirclesInsertResource =
     "plusDomains" :>
       "v1" :>
         "people" :>
           Capture "userId" Text :>
             "circles" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] Circle :> Post '[JSON] Circle

-- | Create a new circle for the authenticated user.
--
-- /See:/ 'circlesInsert' smart constructor.
data CirclesInsert =
  CirclesInsert'
    { _ciPayload :: !Circle
    , _ciUserId  :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CirclesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciPayload'
--
-- * 'ciUserId'
circlesInsert
    :: Circle -- ^ 'ciPayload'
    -> Text -- ^ 'ciUserId'
    -> CirclesInsert
circlesInsert pCiPayload_ pCiUserId_ =
  CirclesInsert' {_ciPayload = pCiPayload_, _ciUserId = pCiUserId_}

-- | Multipart request metadata.
ciPayload :: Lens' CirclesInsert Circle
ciPayload
  = lens _ciPayload (\ s a -> s{_ciPayload = a})

-- | The ID of the user to create the circle on behalf of. The value \"me\"
-- can be used to indicate the authenticated user.
ciUserId :: Lens' CirclesInsert Text
ciUserId = lens _ciUserId (\ s a -> s{_ciUserId = a})

instance GoogleRequest CirclesInsert where
        type Rs CirclesInsert = Circle
        type Scopes CirclesInsert =
             '["https://www.googleapis.com/auth/plus.circles.write",
               "https://www.googleapis.com/auth/plus.login",
               "https://www.googleapis.com/auth/plus.me"]
        requestClient CirclesInsert'{..}
          = go _ciUserId (Just AltJSON) _ciPayload
              plusDomainsService
          where go
                  = buildClient (Proxy :: Proxy CirclesInsertResource)
                      mempty
