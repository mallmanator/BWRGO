// Copyright (c) 2014-2018 The Proton Core developers
// Copyright (c) 2018 The bwrgo Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include "dsnotificationinterface.h"
#include "darksend.h"
#include "instantx.h"
#include "governance.h"
#include "masternodeman.h"
#include "masternode-payments.h"
#include "masternode-sync.h"

CDSNotificationInterface::CDSNotificationInterface()
{
}

CDSNotificationInterface::~CDSNotificationInterface()
{
}

void CDSNotificationInterface::UpdatedBlockTip(const CBlockIndex *pindex)
{
    mnodeman.UpdatedBlockTip(pindex);
    darkSendPool.UpdatedBlockTip(pindex);
    instantsend.UpdatedBlockTip(pindex);
    mnpayments.UpdatedBlockTip(pindex);
    governance.UpdatedBlockTip(pindex);
    masternodeSync.UpdatedBlockTip(pindex);
}

void CDSNotificationInterface::SyncTransaction(const CTransaction &tx, const CBlock *pblock)
{
    instantsend.SyncTransaction(tx, pblock);
}