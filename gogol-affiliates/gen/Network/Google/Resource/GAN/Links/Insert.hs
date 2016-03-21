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
-- Module      : Network.Google.Resource.GAN.Links.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new link.
--
-- /See:/ <https://developers.google.com/affiliate-network/ Google Affiliate Network API Reference> for @gan.links.insert@.
module Network.Google.Resource.GAN.Links.Insert
    (
    -- * REST Resource
      LinksInsertResource

    -- * Creating a Request
    , linksInsert
    , LinksInsert

    -- * Request Lenses
    , liPayload
    , liRoleId
    , liRole
    ) where

import           Network.Google.Affiliates.Types
import           Network.Google.Prelude

-- | A resource alias for @gan.links.insert@ method which the
-- 'LinksInsert' request conforms to.
type LinksInsertResource =
     "gan" :>
       "v1beta1" :>
         Capture "role" LinksInsertRole :>
           Capture "roleId" Text :>
             "link" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] Link :> Post '[JSON] Link

-- | Inserts a new link.
--
-- /See:/ 'linksInsert' smart constructor.
data LinksInsert = LinksInsert'
    { _liPayload :: !Link
    , _liRoleId  :: !Text
    , _liRole    :: !LinksInsertRole
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LinksInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'liPayload'
--
-- * 'liRoleId'
--
-- * 'liRole'
linksInsert
    :: Link -- ^ 'liPayload'
    -> Text -- ^ 'liRoleId'
    -> LinksInsertRole -- ^ 'liRole'
    -> LinksInsert
linksInsert pLiPayload_ pLiRoleId_ pLiRole_ =
    LinksInsert'
    { _liPayload = pLiPayload_
    , _liRoleId = pLiRoleId_
    , _liRole = pLiRole_
    }

-- | Multipart request metadata.
liPayload :: Lens' LinksInsert Link
liPayload
  = lens _liPayload (\ s a -> s{_liPayload = a})

-- | The ID of the requesting advertiser or publisher.
liRoleId :: Lens' LinksInsert Text
liRoleId = lens _liRoleId (\ s a -> s{_liRoleId = a})

-- | The role of the requester. Valid values: \'advertisers\' or
-- \'publishers\'.
liRole :: Lens' LinksInsert LinksInsertRole
liRole = lens _liRole (\ s a -> s{_liRole = a})

instance GoogleRequest LinksInsert where
        type Rs LinksInsert = Link
        type Scopes LinksInsert = '[]
        requestClient LinksInsert'{..}
          = go _liRole _liRoleId (Just AltJSON) _liPayload
              affiliatesService
          where go
                  = buildClient (Proxy :: Proxy LinksInsertResource)
                      mempty
