const {
    PrismaClient
} = require('@prisma/client');
const prisma = new PrismaClient();

const read = async (req, res) => {
    if (req.params.id) {
        const id = parseInt(req.params.id);
        const pedido = await prisma.pedido.findUnique({
            where: {
                id: id
            }
        });
        return res.json(pedido);
    } else {
        const pedido = await prisma.pedido.findMany();
        return res.json(pedido);
    }

}

module.exports = {
    read
};