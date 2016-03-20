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
-- Module      : Network.Google.Resource.DoubleClickBidManager.Rubicon.Notifyproposalchange
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update proposal upon actions of Rubicon publisher.
--
-- /See:/ <https://developers.google.com/bid-manager/ DoubleClick Bid Manager API Reference> for @doubleclickbidmanager.rubicon.notifyproposalchange@.
module Network.Google.Resource.DoubleClickBidManager.Rubicon.Notifyproposalchange
    (
    -- * REST Resource
      RubiconNotifyproposalchangeResource

    -- * Creating a Request
    , rubiconNotifyproposalchange
    , RubiconNotifyproposalchange

    -- * Request Lenses
    , rnPayload
    ) where

import           Network.Google.DoubleClickBids.Types
import           Network.Google.Prelude

-- | A resource alias for @doubleclickbidmanager.rubicon.notifyproposalchange@ method which the
-- 'RubiconNotifyproposalchange' request conforms to.
type RubiconNotifyproposalchangeResource =
     "doubleclickbidmanager" :>
       "v1" :>
         "rubicon" :>
           "notifyproposalchange" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] NotifyProposalChangeRequest :>
                 Post '[JSON] ()

-- | Update proposal upon actions of Rubicon publisher.
--
-- /See:/ 'rubiconNotifyproposalchange' smart constructor.
newtype RubiconNotifyproposalchange = RubiconNotifyproposalchange
    { _rnPayload :: NotifyProposalChangeRequest
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RubiconNotifyproposalchange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rnPayload'
rubiconNotifyproposalchange
    :: NotifyProposalChangeRequest -- ^ 'rnPayload'
    -> RubiconNotifyproposalchange
rubiconNotifyproposalchange pRnPayload_ =
    RubiconNotifyproposalchange
    { _rnPayload = pRnPayload_
    }

-- | Multipart request metadata.
rnPayload :: Lens' RubiconNotifyproposalchange NotifyProposalChangeRequest
rnPayload
  = lens _rnPayload (\ s a -> s{_rnPayload = a})

instance GoogleRequest RubiconNotifyproposalchange
         where
        type Rs RubiconNotifyproposalchange = ()
        type Scopes RubiconNotifyproposalchange = '[]
        requestClient RubiconNotifyproposalchange{..}
          = go (Just AltJSON) _rnPayload doubleClickBidsService
          where go
                  = buildClient
                      (Proxy :: Proxy RubiconNotifyproposalchangeResource)
                      mempty
