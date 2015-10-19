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
-- Module      : Network.Google.Resource.GAN.Links.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves data about a single link if the requesting
-- advertiser\/publisher has access to it. Advertisers can look up their
-- own links. Publishers can look up visible links or links belonging to
-- advertisers they are in a relationship with.
--
-- /See:/ <https://developers.google.com/affiliate-network/ Google Affiliate Network API Reference> for @GANLinksGet@.
module Network.Google.Resource.GAN.Links.Get
    (
    -- * REST Resource
      LinksGetResource

    -- * Creating a Request
    , linksGet'
    , LinksGet'

    -- * Request Lenses
    , lgRoleId
    , lgRole
    , lgLinkId
    ) where

import           Network.Google.Affiliates.Types
import           Network.Google.Prelude

-- | A resource alias for @GANLinksGet@ method which the
-- 'LinksGet'' request conforms to.
type LinksGetResource =
     Capture "role" LinksGetRole :>
       Capture "roleId" Text :>
         "link" :>
           Capture "linkId" Int64 :>
             QueryParam "alt" AltJSON :> Get '[JSON] Link

-- | Retrieves data about a single link if the requesting
-- advertiser\/publisher has access to it. Advertisers can look up their
-- own links. Publishers can look up visible links or links belonging to
-- advertisers they are in a relationship with.
--
-- /See:/ 'linksGet'' smart constructor.
data LinksGet' = LinksGet'
    { _lgRoleId :: !Text
    , _lgRole   :: !LinksGetRole
    , _lgLinkId :: !Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LinksGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgRoleId'
--
-- * 'lgRole'
--
-- * 'lgLinkId'
linksGet'
    :: Text -- ^ 'roleId'
    -> LinksGetRole -- ^ 'role'
    -> Int64 -- ^ 'linkId'
    -> LinksGet'
linksGet' pLgRoleId_ pLgRole_ pLgLinkId_ =
    LinksGet'
    { _lgRoleId = pLgRoleId_
    , _lgRole = pLgRole_
    , _lgLinkId = pLgLinkId_
    }

-- | The ID of the requesting advertiser or publisher.
lgRoleId :: Lens' LinksGet' Text
lgRoleId = lens _lgRoleId (\ s a -> s{_lgRoleId = a})

-- | The role of the requester. Valid values: \'advertisers\' or
-- \'publishers\'.
lgRole :: Lens' LinksGet' LinksGetRole
lgRole = lens _lgRole (\ s a -> s{_lgRole = a})

-- | The ID of the link to look up.
lgLinkId :: Lens' LinksGet' Int64
lgLinkId = lens _lgLinkId (\ s a -> s{_lgLinkId = a})

instance GoogleRequest LinksGet' where
        type Rs LinksGet' = Link
        requestClient LinksGet'{..}
          = go _lgRole _lgRoleId _lgLinkId (Just AltJSON)
              affiliatesService
          where go
                  = buildClient (Proxy :: Proxy LinksGetResource)
                      mempty
